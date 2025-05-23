## Animal is-an object (yes, sort of confusing) look at the extra credit
class Animal(object):
    pass

## Dog is-an Animal
class Dog(Animal):

    def __init__(self, name):
        ## Dog has-an attribute called name
        self.name = name

## Cat is-an Animal
class Cat(Animal):

    def __init__(self, name):
        ## Cat has-an attribute called name
        self.name = name

## Person is-an object
class Person(object):

    def __init__(self, name):
        ## Person has-an attribute called name
        self.name = name

        ## Person has-a pet of some kind
        self.pet = None


## Employee is-a Person
class Employee(Person):

    def __init__(self, name, salary):
        ## ?? hmm what is this strange magic
        super(Employee, self).__init__(name)
        ## Employee has-a salary
        self.salary = salary

## Fish is-an Object
class Fish(object):
    pass

## Salmon is-a Fish
class Salmon(Fish):
    pass

## Halibut is-a Fish
class Halibut(Fish):
    pass

## rover is-a Dog
rover = Dog("Rover")

## satan is-a Cat
satan = Cat("Satan")

## mary is-a Person
mary = Person("Mary")

## mary has-a pet
mary.pet = satan

## frank is-an Employee and has-a name and salary
frank = Employee("Frank", 120000)

## frank has-a pet
frank.pet = rover

## flipper is-a Fish
flipper = Fish()

## crouse is-a Salmon
crouse = Salmon()


## harry is-Halibut
harry = Halibut() 
