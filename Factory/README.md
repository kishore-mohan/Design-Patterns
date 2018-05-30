Factory method lets class defer instantiation to subclasses. Factory method is primarily used to create an instance of a class in a more flexible way. Instead of creating instance of a class directly through new, it is created by another class called as factory.

Implementation of Factory Design Pattern:
A factory class can be implemented in several ways, depending on the type of problem you are trying to solve:

The Creator class can be an abstract class.
The Creator class can be a concrete class with the Factory method as a virtual function.
The Factory method may be parameterized to allow creation of different types of objects.
The Factory method can be a static method.
The Factory method can be an instance method.


When to use
When the client doesn't know which class it may require at runtime.
A class wants its subclasses to specify the objects it creates.
You want to encapsulate creation of objects.
Object instance needs to be initialized with some data not available to the client.
Object instantiation requires lot of data and there are lots of variations based on the data. Instead provide static Factory Methods that create the instances based on different variations.
