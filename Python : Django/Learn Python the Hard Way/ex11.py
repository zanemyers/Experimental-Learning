# prints the string and ends it with a space instead of a newline
print("How old are you?", end = ' ')
# gets input from the user and assigns it to age
# int() casts input to an integer, will give an error if it's not
age = int(input())
print("How tall are you?", end = ' ')
height = input()
print("How much do you weigh", end = ' ')
weight = input()

# prints the f-string (variables are placed into the string)
print(f"So, you're {age} years old, {height} tall and {weight} heavy")