# assigns 10 to types_of_people
types_of_people = 10
# assigns the string to x (places types_of_people inside the string)
x = f"There are {types_of_people} types of people."

# assigns "binary" to binary
binary = "binary"
# assigns "don't" to do_not
do_not = "don't"
# assigns the string to y (places binary and do_not into the string)
y = f"Those who know {binary} and those who {do_not}."

# prints the value assigned to x
print(x)
# prints the value assigned to y
print(y)

# prints the string (x is placed inside the string)
print(f"I said: {x}")
# prints the string (y is placed inside the string)
print(f"I also said: '{y}'")

# assigns False to hilarious
hilarious = False
#assigns the string to joke_evaluation (places a spot for a variable in the string)
joke_evaluation = "Isn't that joke so funn?! {}"

# prints the value of joke_evaluation (inserts the value of hilarious into the string)
print(joke_evaluation.format(hilarious))

# assigns the string to w
w = "This is the left side of..."
# assigns the string to e
e = "a string with a right side"

# prints the concatenation of e onto w
print(w + e)