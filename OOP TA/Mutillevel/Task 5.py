class Parent:
    def parent_method(self):
        print("Parent method")

class Child(Parent):
    def child_method(self):
        print("Child method")

class GrandChild1(Child):
    def grandchild_method(self):
        print("Grandchild method")
        
    def use_parent_method(self):
        self.parent_method()

# Example usage:
grandchild = GrandChild1()
grandchild.use_parent_method()  # This will call the parent_method from the GrandChild1 instance
