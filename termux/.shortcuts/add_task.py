import json
import subprocess

t = subprocess.run(["termux-dialog", "-t", "Test"], stdout=subprocess.PIPE)
j = json.loads(t.stdout)
print(j.get('text'))
