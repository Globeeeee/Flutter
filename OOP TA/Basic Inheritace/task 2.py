class Vehicle:
    def __init__(self, color, speed):
        self.color = color
        self.speed = speed
    
    def show_info(self):
        print(f"Color: {self.color}, Speed: {self.speed}")

class Car(Vehicle):
    def __init__(self, color, speed, model):
        super().__init__(color, speed)
        self.model = model
    
    def show_info(self):
        super().show_info()
        print(f"Model: {self.model}")

# Example usage:
car = Car("Red", 120, "Toyota")
car.show_info()
