import csv
import json
import shutil

if __name__ == "__main__":
    reader = csv.reader(open("testing.csv",encoding="utf8"))
    dic = {}
    i = 0
    for rows in reader:
        day,question,answer,anim,nani= rows
        #print([day,question,anims])
        dic[i] =[question,answer,anim,nani]
        i+=1
    print ((dic))
    f = open("jsontext.json","w+")
    f.write(json.dumps(dic))
    f.close()
    shutil.copy("jsontext.json","../Documents/GodotGames/FALL2018PROTOJAM" )

