class Vehicle:
    def start(self):
        print("Vehicle started")

class Car(Vehicle):
    def drive(self):
        print("Car is being driven")

# Example usage:
car = Car()
car.start()  # Call start method of the Vehicle class
car.drive()  # Call drive method of the Car class
