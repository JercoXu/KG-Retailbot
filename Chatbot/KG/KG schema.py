# This script to form IORA-LPG, including transforming CORA-OWL to LPG and combing ERAS and TO ontologies.

# Author: Ke Xu, TU Delft

from py2neo import Graph, Node, Relationship, NodeMatcher, RelationshipMatcher

# connect to 'kgschema' database
graph = Graph("bolt://localhost:11005", password = 'xxx', name='kgschema')

#%%
# delete all the nodes and relationships
graph.delete_all()

# import the CORA schema
graph.run("CREATE CONSTRAINT n10s_unique_uri ON (r:Resource) ASSERT r.uri IS UNIQUE")
graph.run("CALL n10s.graphconfig.init()")

# load CORA-related ontologies, adapt to your path before running
graph.run("CALL n10s.onto.import.fetch('file:///home/jerco/Desktop/thesis/CORA/cora.owl','RDF/XML')")
graph.run("CALL n10s.onto.import.fetch('file:///home/jerco/Desktop/thesis/CORA/corax.owl','RDF/XML')")
graph.run("CALL n10s.onto.import.fetch('file:///home/jerco/Desktop/thesis/CORA/cora-bare.owl','RDF/XML')")
graph.run("CALL n10s.onto.import.fetch('file:///home/jerco/Desktop/thesis/CORA/cora-fullaxiom.owl','RDF/XML')")
graph.run("CALL n10s.onto.import.fetch('file:///home/jerco/Desktop/thesis/CORA/pos.owl','RDF/XML')")
graph.run("CALL n10s.onto.import.fetch('file:///home/jerco/Desktop/thesis/CORA/rparts.owl','RDF/XML')")
graph.run("CALL n10s.onto.import.fetch('file:///home/jerco/Desktop/thesis/CORA/sumo-cora.owl','RDF/XML')")

#%% transfer RDF to LPG
# attach the restrictionType to relationship
graph.run("MATCH ()-[r:n4sch__SCO_RESTRICTION]->(), (n:n4sch__Relationship) WHERE n.n4sch__name=r.onPropertyName "
          "SET n.restrictionType=r.restrictionType, n.cardinalityVal=r.cardinalityVal")

# rename the Class label
graph.run("MATCH (n:n4sch__Class) WITH collect(n) as nodes CALL apoc.refactor.rename.label"
          "('n4sch__Class', 'Class', nodes) YIELD errorMessages RETURN errorMessages")
# rename the subclass relationship
graph.run("MATCH ()-[r:n4sch__SCO]->() WITH collect(r) AS rels CALL apoc.refactor.rename.type"
          "('n4sch__SCO', 'subClassOf', rels) YIELD errorMessages RETURN errorMessages")
# rename the subPropertyOf relationship
graph.run("MATCH ()-[r:n4sch__SPO]->() WITH collect(r) AS rels CALL apoc.refactor.rename.type"
          "('n4sch__SPO', 'subPropertyOf', rels) YIELD errorMessages RETURN errorMessages")
# rename the property 'name'
graph.run("MATCH (n:Resource) WITH collect(n) AS nodes CALL apoc.refactor.rename.nodeProperty"
          "('n4sch__name', 'name', nodes) YIELD errorMessages RETURN errorMessages")
# rename the property 'comment'
graph.run("MATCH (n:Resource) WITH collect(n) AS nodes CALL apoc.refactor.rename.nodeProperty"
          "('n4sch__comment', 'comment', nodes) YIELD errorMessages RETURN errorMessages")
# rename the property 'propCharacteristics'
graph.run("MATCH (n:Resource) WITH collect(n) AS nodes CALL apoc.refactor.rename.nodeProperty"
          "('n4sch__propCharacteristics', 'propCharacteristics', nodes) YIELD errorMessages RETURN errorMessages")
# rename the Resource label
graph.run("MATCH (n:Resource) WITH collect(n) as nodes CALL apoc.refactor.rename.label"
          "('Resource', 'Class', nodes) YIELD errorMessages RETURN errorMessages")
# rename the relationship label
graph.run("MATCH (n:n4sch__Relationship) WITH collect(n) as nodes CALL apoc.refactor.rename.label"
          "('n4sch__Relationship', 'Relationship', nodes) YIELD errorMessages RETURN errorMessages")

#%%
# project for subPropertyOf (CALL gds.graph.list()) CREATE DATABASE subPropertyOf
graph.run("MATCH (n:Class)-[r:subPropertyOf]->(m:Class) WITH gds.alpha.graph.project('subPropertyOf', n, m, "
          "{sourceNodeLabels: labels(n), targetNodeLabels: labels(m)}, {relationshipType: type(r)}) "
          "AS g RETURN g.graphName, g.nodeCount, g.relationshipCount")
graph.run("CALL gds.graph.export('subPropertyOf', {dbName:'subPropertyOf', additionalNodeProperties: "
          "['name', 'uri', 'propCharacteristics', 'restrictionType', 'cardinalityVal', 'comment']})")

#%%
# change RDF to PLG (Symmetric, Transitive, Functional)
graph.run("MATCH (s:Class)-[domain:n4sch__DOMAIN]-(n:Relationship)-[range:n4sch__RANGE]-(o:Class) "
          "CALL apoc.create.relationship(s, n.name, {uri:n.uri, propCharacteristics:n.propCharacteristics,"
          "restrictionType:n.restrictionType, cardinalityVal:n.cardinalityVal, comment:n.comment}, o) YIELD rel RETURN rel")

#%% remove useless stuff from browser
# remove the Relationship node
graph.run("MATCH (n:Relationship) DETACH DELETE n")
# remove the n4sch__SCO_RESTRICTION relationship
graph.run("MATCH ()-[r:n4sch__SCO_RESTRICTION]->() DETACH DELETE r")
# remove isolated node (also remove the transfer nodes _NsPrefDef and _GraphConfig)
graph.run("MATCH (n) WHERE NOT (n)--() DELETE (n)")
# copy a database
    # STOP DATABASE mykgschema (cypher)
    # ./bin/neo4j-admin copy --from-database=kgschema --to-database=kgdata
    # CREATE DATABASE kgdata (cypher)
    # START DATABASE kgschema (cypher)
    # CALL gds.graph.list()

#%% filter
# delete nodes starting with '_'
graph.run("MATCH(n) WHERE n.name=~'_.*' detach delete n")
graph.run("MATCH(n) WHERE n.name='CollectiveRoboticSystem' OR n.name='ArtificialSystem' OR n.name='Artifact' OR n.name='Design' "
          "OR n.name='CorpuscularObject' OR n.name='SelfConnectedObject' OR n.name='CognitiveAgent' OR n.name='SentientAgent' "
          "OR n.name ='Group' OR n.name='RobotGroup' or n.name='Collection' OR n.name='DesignObject' detach delete n")
graph.run("MATCH(n) WHERE n.name='RobotRobotCommunication' OR n.name='InternalChange' or n.name='Creation' OR n.name='Making' "
          "OR n.name='IntentionalProcess' OR n.name='TimePosition' OR n.name='TimeMeasure' OR n.name='ConstantQuantity' detach delete n")
graph.run("MATCH p=()-[:subClassOf]->(n) WHERE n.name='Relation' DETACH DELETE p")
graph.run("MATCH p=()-[:subClassOf]->(n) WHERE n.name='Function' DETACH DELETE p")
# delete isolated nodes
graph.run("MATCH (n) WHERE size((n)--())=0 DELETE (n)")

#rename cora-bare label
graph.run("MATCH (n:Class) WHERE n.uri=~'http://purl.org/ieee1872-owl/cora-bare#.*' WITH collect(n) as nodes CALL"
          " apoc.refactor.rename.label('Class', 'CORA', nodes) YIELD errorMessages RETURN errorMessages")
# rename sumo-cora label
graph.run("MATCH (n:Class) WHERE n.uri=~'http://purl.org/ieee1872-owl/sumo-cora#.*' WITH collect(n) as nodes CALL"
          " apoc.refactor.rename.label('Class', 'SUMO-CORA', nodes) YIELD errorMessages RETURN errorMessages")
# rename corax label
graph.run("MATCH (n:Class) WHERE n.uri=~'http://purl.org/ieee1872-owl/corax#.*' WITH collect(n) as nodes CALL "
          "apoc.refactor.rename.label('Class', 'CORAX', nodes) YIELD errorMessages RETURN errorMessages")
# rename pos label
graph.run("MATCH (n:Class) WHERE n.uri=~'http://purl.org/ieee1872-owl/pos#.*' WITH collect(n) as nodes CALL "
          "apoc.refactor.rename.label('Class', 'POS', nodes) YIELD errorMessages RETURN errorMessages")

#%%
# integrate CORA with TO
graph.run("MATCH(n) WHERE n.name='Robot' CREATE (n)-[:behaves]->(m:TO{name:'Robot Behavior'})")
graph.run("MATCH(n1),(n2) WHERE n1.name='Robot'AND n2.name='Proposition' CREATE (n1)-[:solves]->(m1:TO{name:'Task'})-[:abstractPart]"
          "->(m2:TO{name:'Constraint'}), (n1)-[:hasPurpose]->(m3:TO{name:'Goal'})-[:abstractPart]->(m1)-[:subClassOf]->(n2)")
graph.run("MATCH (n),(m),(p),(d),(re),(r) WHERE n.name='Robot Behavior' AND m.name='Task' AND p.name='Process' AND d.name='Device' AND "
          "re.name='RoboticEnvironment' AND r.name='Robot' CREATE (n)-[:subClassOf]->(p), (n)-[:realizes]->(m)-[:abstractPart]->(:TO{name:'Subtask'}),"
          " (m)-[:dependsOn]->(:TO{name:'Platform'})-[:subClassOf]->(d), (m)-[:dependsOn]->(re), (r)-[:hasCapability]->(c:TO{name:'Capability'}),"
          " (e:TO{name:'Evaluation'})-[:evaluates]->(m), (e)-[:evaluates]->(c), (e)-[:abstractPart]->(:TO{name:'Performance Metric'})")
# intergrate CORA with ERAS
graph.run("MATCH(a),(r),(s) WHERE a.name='Agent' AND r.name='Robot' AND s.name='Task' CREATE (a)-[:applies]->(:ERAS"
          "{name:'Agent Plan'})-[:contains]->(p:ERAS{name:'Plan Action'}), (r)-[:executes]->(p)-[:is_implemented_by]->(s)")

#%% final filter for n
# filter for node
graph.run("MATCH(n) WHERE n.name='ElectricDevice' OR n.name='SingleRoboticSystem' OR n.name='ProcessingDevice' OR "
          "n.name='HumanRobotCommunication' OR n.name='SetOrClass' DETACH DELETE n")
# filter for relationship
graph.run("MATCH ()-[r]-() WHERE type(r)='overlapsPosition' OR type(r)='partlyLocated' OR type(r)='causes' DELETE r")
graph.run("MATCH ()-[r]-() WHERE id(r)=5 OR id(r)=58 OR id(r)=61 OR id(r)=8 DELETE r") #dependsOn

#%%
# add the name property for the relationship
graph.run("MATCH p=()-[r]->() SET r.name=type(r) RETURN p")
# export the kgschema to json file
graph.run("CALL apoc.export.json.all('allschema.json', {useTypes:true})")