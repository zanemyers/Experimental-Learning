# imports the module system
from sys import argv
# read the WYSS section for how to run this

# upacks the command line arguments into 4 variables
script, first, second, third = argv

print(">>>> argv=", repr(argv))

print("The script is called:", script)
print(f"Your first variable is: {first}")
print("Your second variable is:", second)
print(f"Your third variable is: {third}")