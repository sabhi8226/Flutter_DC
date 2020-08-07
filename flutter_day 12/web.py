import cgi
import subprocess

print("content-type:  text/html")
print()

mydata = cgi.FieldStorage()
dosname = mydata.getvalue("x")
dimagename = mydata.getvalue("y")

# output = subprocess.getoutput("sudo " + myx)
cmd = "sudo docker run -dit --name {} {}".format(dosname, dimagename)
output = subprocess.getoutput(cmd)

print(output)
