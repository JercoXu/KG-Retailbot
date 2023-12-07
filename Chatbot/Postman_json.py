import json

with open("Rasa_Postman.json") as fd:
    data = json.load(fd)

print(type(data[0]))