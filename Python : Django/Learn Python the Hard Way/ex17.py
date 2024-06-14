from sys import argv
from os.path import exists

script, from_file, to_file = argv

print(f"Copying from {from_file} to {to_file}")

# we could do these two on one line, how?
# indata = open(from_file).read()
in_file = open(from_file)
indata = in_file.read()

print(f"The input file is {len(indata)} bytes long")

# calls the exists function imported from os.path to see if the file already exists
# if the file doesn't exist and you continue it will create the out_file
# if the file does exist and you continue it will overwrite the content of the file
print(f"Does the output file exist? {exists(to_file)}")
print("Ready, hit RETURN to continue, CTRL-C to abort.")
input("> ")

#out_file = open(to_file, 'w').write(indata)
out_file = open(to_file, 'w')
out_file.write(indata)

print("Alright, all done.")

out_file.close()
in_file.close()