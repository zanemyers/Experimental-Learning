def cheese_and_crackers(cheese_count, boxes_of_crackers):
    print(f"You have {cheese_count} cheeses!")
    print(f"You have {boxes_of_crackers} boxes of crackers!")
    print(f"Man that's enough for a party!")
    print("Get a blanket.\n")

print("We can just give the function numbers directly:")
cheese_and_crackers(20, 30)


print("OR, we can use variables from our script:")
amount_of_cheese = 10
amount_of_crackers = 50

cheese_and_crackers(amount_of_cheese, amount_of_crackers)

print("We can even do math inside too:")
cheese_and_crackers(10 + 20, 5 + 6)


print("And we can combine the two, variables and math:")
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)

def easy_math(*args):
    sum = 0
    product = 1
    #difference = 0
    #quotient = 0
    for number in args:
        sum += number
        product *= number

    print(f"Sum of all numbers: {sum}")
    print(f"Product of all the numbers: {product}")


easy_math(1,2,3,4,5)
easy_math(10, -2, 5, -3)