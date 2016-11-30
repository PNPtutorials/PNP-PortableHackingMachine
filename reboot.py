import sys
import time
import subprocess
f=open("/root/.bashrc","r")
lines=f.readlines()
f.close
f=open("/root/.bashrc","w")
for line in lines:
	if line=="#./ap.sh PNP pnptutorials &" + "\n":
		f.write("./ap.sh PNP pnptutorials &" + "\n")
	else:
		f.write(line)
f.close()
subprocess.call(["reboot"])
