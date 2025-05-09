class Parent(object):

    def implicit(self):
        print("PARENT implicity()")

    def override(self):
        print("PARENT overrride()")

    def altered(self):
        print("PARENT altered()")

class Child(Parent):
    
    def override(self):
        print("CHILD overrride()")

    def altered(self):
        print("CHILD, BEFORE PARENT altered()")
        super().altered()
        print("CHILD, AFTER PARENT, altered()")

dad = Parent()
son = Child()

dad.implicit()
son.implicit()

dad.override()
son.override()

dad.altered()
son.altered()

class Other(object):

    def overrride(self):
        print("OTHER override()")

    def implicit(self):
        print("OTHER implicit()")
    
    def altered(self):
        print("OTHER altered()")


class Child_2(object):
    
    def __init__(self):
        self.other = Other()

    def implicit(self):
        self.other.implicit()

    def override(self):
        print("CHILD override()")

    def altered(self):
        print("CHILD, BEFORE OTHER altered()")
        self.other.altered()
        print("CHILD, AFTER OTHER altered()")


daughter = Child_2()

daughter.implicit()
daughter.override()
daughter.altered()