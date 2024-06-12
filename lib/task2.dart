import 'task1.dart';

class Novel extends Book {
  String genre;

  Novel(super.title, super.author, super.numberOfPages, this.genre);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Genre: $genre');
  }
}

