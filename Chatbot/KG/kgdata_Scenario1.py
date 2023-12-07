# This script generates graph database 'database' to store product information in Scenario 1.

# Author: Ke Xu, TU Delft

import yaml
import json
from py2neo import Graph, Node, Relationship, NodeMatcher

# connect to 'database' database
graph = Graph("bolt://localhost:11003", password = 'xxx', name='database')

# initialize graph database 'database'
graph.delete_all()

#%%
# load the schema data
json_data=[]
for line in open('./KG/allschema.json'):
    json_data.append(line)
# print(json.loads(json_data[50])['label'])
for line in json_data:
    list_dic = json.loads(line)
    # filter useful nodes
    if list_dic['properties']['name'] == 'Object':
        Object_dic = list_dic
    if list_dic['properties']['name'] == 'Robot':
        Robot_dic = list_dic
    if list_dic['properties']['name'] == 'PoseMeasure':
        PoseMeasure_dic = list_dic
    if list_dic['properties']['name'] == 'PositionMeasure':
        PositionMeasure_dic = list_dic
    if list_dic['properties']['name'] == 'PhysicalQuantity':
        PhysicalQuantity_dic = list_dic
    if list_dic['properties']['name'] == 'PositionRegion':
        PositionRegion_dic = list_dic
    if list_dic['properties']['name'] == 'Device':
        Device_dic = list_dic

    # filter useful relationships
    if list_dic['properties']['name'] == 'pose':
       pose_dic = list_dic
    if list_dic['properties']['name'] == 'positionedAt':
       positionedAt_dic = list_dic
    if list_dic['properties']['name'] == 'inPR':
       inPR_dic = list_dic
    if list_dic['properties']['name'] == 'robotActuatingPart':
       robotActuatingPart_dic = list_dic
    if list_dic['properties']['name'] == 'robotCommunicatingPart':
       robotCommunicatingPart_dic = list_dic
    if list_dic['properties']['name'] == 'robotSensingPart':
       robotSensingPart_dic = list_dic

# load the yaml data
with open('./KG/knowledge_base.yaml') as fy:
    yaml_data = yaml.load(fy, Loader=yaml.FullLoader)

#%% load values for relationships
Object_uri = Object_dic['properties']['uri']
Object_source = Object_dic['labels']
Robot_uri = Robot_dic['properties']['uri']
Robot_source = Object_dic['labels']
PoseMeasure_uri = PoseMeasure_dic['properties']['uri']
PoseMeasure_source = PoseMeasure_dic['labels']
PositionMeasure_uri = PositionMeasure_dic['properties']['uri']
PositionMeasure_source = PositionMeasure_dic['labels']
PhysicalQuantity_uri = PhysicalQuantity_dic['properties']['uri']
PhysicalQuantity_source = PhysicalQuantity_dic['labels']
PositionRegion_uri = PositionRegion_dic['properties']['uri']
PositionRegion_source = PositionRegion_dic['labels']
Device_uri = Device_dic['properties']['uri']
Device_source = Device_dic['labels']

# load values for relationship
pose_uri = pose_dic['properties']['uri']
positionedAt_uri = positionedAt_dic['properties']['uri']
inPR_uri = inPR_dic['properties']['uri']

list_key = list(yaml_data.keys())
list_values = list(yaml_data.values())

#%% import data into graph
len_object =len(yaml_data)-1
for i in range(len_object):
    data_base = list(list_values[i]['base_loc'].values())
    data_product = list(list_values[i]['product_loc'].values())

    node_Object = Node('Object', 'Data', name=list_key[i], uri=Object_uri, source=str(Object_source).lstrip("['").rstrip("']"), id=list_values[i]['ID_tag'], mass=list_values[i]['mass'], perishable=list_values[i]['perishable'], pose=data_base, position=data_product)
    node_PoseMeasure = Node('PoseMeasure', 'Data', name='base_location', uri=PoseMeasure_uri, source=str(PoseMeasure_source).lstrip("['").rstrip("']"), x=data_base[0], y=data_base[1], theta=data_base[2])
    node_PositionMeasure = Node('PositionMeasure', 'Data', name='product_location', uri=PositionMeasure_uri, source=str(PositionMeasure_source).lstrip("['").rstrip("']"), x=data_product[0], y=data_product[1], z=data_product[2])
    node_PositionRegion = Node('PositionRegion', 'Data', name='product_region', uri=PositionRegion_uri, source=str(PositionRegion_source).lstrip("['").rstrip("']"), value=list_values[i]['product_reg'])
    rel_pose = Relationship(node_Object, 'pose', node_PoseMeasure, name='base_pose', uri=pose_uri)
    rel_positionedAt = Relationship(node_Object, 'positionedAt', node_PositionMeasure, name='product_position', uri=positionedAt_uri)
    rel_inPR = Relationship(node_PositionMeasure, 'inPR', node_PositionRegion, name='located_at', uri=inPR_uri)
    graph.create(rel_pose | rel_positionedAt | rel_inPR)

# add delivery_loc
data_base_deli = list(list_values[6]['base_loc'].values())
node_PhysicalQuantity = Node('PhysicalQuantity', 'Data', name=list_key[len_object], uri=PhysicalQuantity_uri, source=str(PhysicalQuantity_source).lstrip("['").rstrip("']"), pose=data_base_deli)
node_PoseMeasure = Node('PoseMeasure', 'Data', name='base_loc', uri=PoseMeasure_uri, source=str(PoseMeasure_source).lstrip("['").rstrip("']"), x=data_base[0], y=data_base[1], theta=data_base[2])
rel_pose = Relationship(node_PhysicalQuantity, 'pose', node_PoseMeasure, name='base_pose', uri=pose_uri)
graph.create(rel_pose)

#%% add schema nodes and relationships
# graph.run("CREATE CONSTRAINT ON (n:`SUMO-CORA`) assert n.neo4jImportId IS UNIQUE")
graph.run("CALL apoc.import.json('first.json')")
# change the Object starting node to data 'Object'
graph.run("MATCH ()-[r:measure]->(n), (m:Object) CALL apoc.refactor.from(r, m) YIELD input, output RETURN input, output")
graph.run("MATCH (m:Object), ()-[r:subClassOf]->(n) WHERE n.name='Physical' CALL apoc.refactor.from(r, m) YIELD input, output RETURN input, output")
graph.run("MATCH (n), (m) WHERE (n:PoseMeasure or n:PositionMeasure) AND m.name='PhysicalQuantity' CREATE (n)-[:subClassOf]->(m)")
# add PhysicalQuantity intance
graph.run("MATCH (n:PhysicalQuantity), (m) WHERE m.name='PhysicalQuantity' CREATE (n)-[:instanceOf]->(m)")
# delete isolated nodes
graph.run("MATCH (n) WHERE NOT (n)--() DELETE (n)")
# add "Ontology" label
graph.run("MATCH (n:`SUMO-CORA`) WITH collect(n) as nodes CALL apoc.create.addLabels(nodes, ['Ontology']) YIELD node RETURN node")

#%% add schema nodes and relationships
# graph.run("CREATE CONSTRAINT ON (n:CORA) assert n.neo4jImportId IS UNIQUE")
# graph.run("CREATE CONSTRAINT ON (n:CORAX) assert n.neo4jImportId IS UNIQUE")
graph.run("CALL apoc.import.json('second.json')")
# add "Ontology" label
graph.run("MATCH (n) WHERE (n:`SUMO-CORA`) WITH collect(n) as nodes CALL apoc.create.addLabels(nodes, ['Ontology']) YIELD node RETURN node")
graph.run("MATCH (n) WHERE (n:CORA) WITH collect(n) as nodes CALL apoc.refactor.rename.label('CORA', 'Ontology', nodes) YIELD errorMessages RETURN errorMessages")
graph.run("MATCH (n) WHERE (n:CORAX) WITH collect(n) as nodes CALL apoc.refactor.rename.label('CORAX', 'Ontology', nodes) YIELD errorMessages RETURN errorMessages")
# add relationship
graph.run("MATCH(n), (m) WHERE (n.name='PhysicalEnvironment' OR n.name= 'Agent') AND m.name='Physical' CREATE (n)-[:subClassOf]->(m)")

#%% delete useless nodes
graph.run("MATCH(n) WHERE n.name='RoboticEnvironment' OR n.name='RoboticSystem' OR n.name='PhysicalEnvironment' OR "
          "n.name='Robot' DETACH DELETE n")

#%% add robot
with open("./KG/data.json") as fd:
    robot_data = json.load(fd)
node_Robot = Node('Robot', 'Data', uri=Robot_uri, source=str(Robot_source).lstrip("['").rstrip("']"))
for item in robot_data["robot"]:
    node_Robot.update(item)
    graph.push(node_Robot)
node_matcher = NodeMatcher(graph)
node_Agent = node_matcher.match(name='Agent').first()
relationship_robot_agent = Relationship(node_Robot, 'subClassOf', node_Agent)
graph.create(relationship_robot_agent)

#%% update position region property, this will be update automatically when running robotic tasks in ROS
graph.run("MATCH (n:Object)-[]-()-[]->(m:PositionRegion) WHERE n.name='hageslag' SET m.value='Shelf1'")
graph.run("MATCH (n:Object)-[]-()-[]->(m:PositionRegion) WHERE n.name='tea_box' SET m.value='Basket'")

