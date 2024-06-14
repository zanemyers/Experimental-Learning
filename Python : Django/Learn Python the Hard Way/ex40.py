# dictionary style
# mystuff = {'apple': "I AM APPLES!"}
# print(mystuff['apple'])

# importing the mystuff module
import mystuff
# importing the MyStuff_class class
import MyStuff_class 

# module style
mystuff.apple()
print(mystuff.tangerine)

# mystuff['apple'] # get apple from dict
mystuff.apple() # get apple from the module
mystuff.tangerine # same thing, it's just a variable

# class style
# instantiate a class
thing = MyStuff_class.MyStuff()
thing.apple()
print(thing.tangerine)


class Song(object):

    def __init__(self, lyrics):
        self.lyrics = lyrics

    def sing_me_a_song(self):
        for line in self.lyrics:
            print(line)


happy_bday = Song(["Happy birthday to you", 
                   "I don't want to get sued",
                   "So I'll stop right there"])

bulls_on_parade = Song(["They rally around tha family",
                        "With pockets full of shells"])

happy_bday.sing_me_a_song()

bulls_on_parade.sing_me_a_song()
