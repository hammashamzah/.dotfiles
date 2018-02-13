import json
import os
import time


lastModified = os.path.getmtime("/home/hammas/.config/google-chrome/Default/Bookmarks")

with open('strings.json') as json_data:
    d = json.load(json_data)
    print(d)