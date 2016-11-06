from pprint import pprint;
import json;

with open('../data/sampleData.jason') as fileObj:
    jasonDict = json.load(fileObj)

#pprint(jasonDict)
print(len(jasonDict))
pprint(jasonDict["web-app"]["servlet"][0]['servlet-name'])

