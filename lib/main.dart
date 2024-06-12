
import 'package:task1/task1.dart';

import 'task2.dart';

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

}

