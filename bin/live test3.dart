import 'live test4.dart';
void displayFruitDetails

    (List<Map<String, dynamic>> fruits)
{
  for (var fruit in fruits) {
    print("Name: ${fruit["name"]}, Color: ${fruit["color"]}, Price: \$${fruit["price"].toStringAsFixed(2)}");}
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

  // Call the displayFruitDetails function
  displayFruitDetails(fruits);
}
