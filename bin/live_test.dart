import 'live test2.dart ';
class Fruit {
  String name;
  String color;
  double price;

  Fruit(this.name, this.color, this.price);
}

void main() {
  // Create a list of fruits
  List<Fruit> fruits = [
    Fruit("Apple", "Red", 2.5),
    // Add more fruits here
  ];

  // Print the details of each fruit
  for (Fruit fruit in fruits) {
    print("Name: ${fruit.name}, Color: ${fruit.color}, Price: \$${fruit.price.toStringAsFixed(2)}");
  }
}


