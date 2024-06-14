from sys import argv

# unpacks argv and assigns it to the variables on the left
script, user_name = argv

# assigns a string to prompt
prompt = f'{script} ({user_name})> '

print(f"Hi {user_name} , I'm the {script} script.")
print("I'd like to ask you a few questions.")
likes = input(f"Do you like me {user_name}?\n{prompt}")

print(f"Where do you live {user_name}?")
lives = input(prompt)

print(f"What kind of computer do you have?")
computer = input(prompt)

print(f"""
Alright, so you said {likes} about liking me.
You live in {lives}. Not sure where that is.
And you have a {computer} computer. Nice.
""")