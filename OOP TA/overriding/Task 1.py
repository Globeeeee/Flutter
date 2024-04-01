class Animal:
    def make_sound(self):
        print("Generic animal sound")

class Cat(Animal):
    def make_sound(self):
        print("Meow")

# Create objects of the classes
animal = Animal()
cat = Cat()

# Call the methods
animal.make_sound()  # Output: Generic animal sound
cat.make_sound()     # Output: Meow
