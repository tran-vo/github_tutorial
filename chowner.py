import os
 
f= input()
path = "./" + f
os.chown(path,100,-1)
