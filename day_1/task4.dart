abstract class Serializable {
  String toJson();
}

class User implements Serializable {
  String name;
  String gender;
  int age;

  User(this.name, this.gender, this.age);

  @override
  String toJson() {
    return 'name: $name, gender: $gender, age: $age';
  }
}

class Product implements Serializable {
  String productName;
  String category;
  double price;

  Product(this.productName, this.category, this.price);

  @override
  String toJson() {
    return 'product name: $productName, category: $category, price: $price\$';
  }
}

