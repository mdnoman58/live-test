import 'live test5.dart';
void applyPriceDiscount(List<Map<String, dynamic>> fruits, double discount) {
  for (var fruit in fruits) {
    fruit["price"] = fruit["price"] * (1 - discount);
  }
}

void displayFruitDetails(List<Map<String, dynamic>> fruits) {
  for (var fruit in fruits) {
    print("Name: ${fruit["name"]}, Color: ${fruit["color"]}, Price: \$${fruit["price"].toStringAsFixed(2)}");
  }
}

void main() {
  // List of fruits as maps
  List<Map<String, dynamic>> fruits = [
    {
      "name": "Banana",
      "color": "Yellow",
      "price": 1.0,
    },
    {
      "name": "Apple",
      "color": "Red",
      "price": 2.5,
    },
    {
      "name": "Orange",
      "color": "Orange",
      "price": 1.75,
    },
  ];

  // Apply 10% discount
  double discount = 0.1;
  applyPriceDiscount(fruits, discount);

  // Display fruits with discount
  print("Fruits with ${discount * 100}% discount:");
  displayFruitDetails(fruits);
}
