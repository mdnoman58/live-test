import 'live test3.dart';
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
    // Add more fruits here
  ];

  // Print the details of each fruit
  for (var fruit in fruits) {
    print("Name: ${fruit["name"]}, Color: ${fruit["color"]}, Price: \$${fruit["price"].toStringAsFixed(2)}");
  }
}
