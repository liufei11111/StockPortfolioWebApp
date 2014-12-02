__author__ = 'songqiaosu'
import urllib
import json
motifs = []
for url in json.load(open("url.json")):
    f = urllib.urlopen(url)
    js = json.load(f)
    for motif in js["motifs"]:
        tempmotif = {}
        tempmotif["name"] = motif["name"]
        tempmotif["idea"] = motif["idea"]
        tempmotif["urlName"] = motif["urlName"]
        print tempmotif
        motifs.append(tempmotif)

portfolios = json.load(open("new8.json"))
#doing a naive matching
for pfl in portfolios:
    for motif in motifs:
        if pfl["name"] == motif["urlName"]:
            pfl["name"] = motif["name"]
            pfl["urlName"] = motif["urlName"]
            pfl["description"] = motif["idea"]
            break
    else:
        raise ValueError
json.dump(portfolios,open("new9.json",'w'))
