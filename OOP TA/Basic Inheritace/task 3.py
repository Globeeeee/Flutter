class Animal:
    def animalspeak(self):
        print("Animal Speak")
class Dog(Animal):
    def dogbark(self):
        print("Dog bark")
        self.animalspeak()

d=Dog()
d.dogbark()