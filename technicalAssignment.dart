import 'dart:io';

// Interface definition
abstract class Animal {
  void makeSound();
}

// Base class implementing Animal interface
class Dog implements Animal {
  @override
  void makeSound() {
    print("Woof!");
  }
  
  // Method overriding
  void showTrick() {
    print("Fetching a stick!");
  }
}

// Subclass inheriting from Dog
class Labrador extends Dog {
  @override
  void makeSound() {
    print("Bark Bark!");
  }
}

// Class for initializing data from a file
class AnimalInitializer {
  static List<String> readDataFromFile(String filePath) {
    File file = File(filePath);
    List<String> lines = file.readAsLinesSync();
    return lines;
  }
}

void main() {
  // Initialize data from file
  List<String> data = AnimalInitializer.readDataFromFile("animal_data.txt");
  
  // Create instances of classes
  Dog myDog = Dog();
  Labrador myLabrador = Labrador();
  
  // Demonstrate method overriding
  print("Demonstrating method overriding:");
  myLabrador.makeSound(); // Output: Bark Bark!
  
  // Demonstrate initialization from file
  print("\nData initialized from file:");
  for (var line in data) {
    print(line);
  }
  
  // Demonstrate the use of a loop
  print("\nDemonstrating the use of a loop:");
  for (int i = 0; i < 3; i++) {
    print("Loop iteration $i");
  }
}
