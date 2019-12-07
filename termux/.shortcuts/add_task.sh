#!/bin/bash

json=$(termux-dialog -t "Add new task:" > tr -d \n)
export json=$json
echo $json
#json="{ "code": -1, "text": "tttt" }"
text=`python3 -c "import json; from os import environ; j = environ['json']; j = json.loads(environ['json']); print(j.get('text'));"`
echo $text
