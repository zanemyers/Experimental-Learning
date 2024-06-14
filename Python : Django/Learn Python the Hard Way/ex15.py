from sys import argv

script, filename = argv

# assigns a newly opened file to txt
txt = open(filename)

print(f"Here's your file {filename}: ")

# prints out the content of the txt from the file
print(txt.read())

print("Type the filename again: ")
file_again = input("> ")

txt_again = open(file_again)

print(txt_again.read())

txt.close()
txt_again.close()