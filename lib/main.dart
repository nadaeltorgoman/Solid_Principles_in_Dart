import 'package:task1/task1.dart';

import 'task2.dart';
import 'task3.dart';
import 'task4.dart';
import 'task5.dart';

void main() {
  // Task 1: Create a Basic Class
  // Objective: Write a Dart class named Book that holds information about books.
  // Each book should have a title, author, and number of pages.
  // Include a method to display this information.

  Book book = Book('The Great Gatsby', 'F. Scott Fitzgerald', 180);
  book.displayInfo();

  // Task 2: Implement Inheritance
  // Objective: Create a class Novel that extends the Book class from Task 1.
  // Add a specific property for the genre of the novel and override the displayInfo method to include the genre

  Novel novel = Novel('The Great Gatsby', 'F. Scott Fitzgerald', 180, 'Classic');
  novel.displayInfo();

  //Task 3: Demonstrate Polymorphism
  //Objective: Create an abstract class Shape with a method area().
  //Then, define two subclasses Circle and Rectangle that implement the area method.
  //Demonstrate polymorphism by using a function that accepts a Shape and outputs its area.

  Shape circle = Circle(20.0);
  Shape rectangle = Rectangle(12.0, 18.0);

  printArea(circle);
  printArea(rectangle);

  //Task 4: Implement an Interface with Multiple Classes
  //Objective: Define an interface Serializable with a method toJson().
  //Then, implement this interface in classes User and Product which convert their properties to a JSON-like string.

  User user = User('Kaito Kid', 'male', 17);
  Product product = Product('Laptop', "machine", 999.99);

  print('User JSON: ${user.toJson()}');
  print('Product JSON: ${product.toJson()}');


  //Task 5: Implement Exception Handling

  BankAccount account = BankAccount(100.0);

  try {
    account.deposit(50.0);
    account.withdraw(30.0);
    account.withdraw(150.0); // This will throw an exception
  } catch (e) {
    if (e is OverdrawException) {
      print(e.errorMessage());
    } else {
      print('An unknown error occurred.');
    }
  }
}
