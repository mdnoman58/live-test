List<Map<String, dynamic>> applyPriceDiscount(
    List<Map<String, dynamic>> fruits, double discount) {
  // Create a new list to store fruits with discount

  List<Map<String, dynamic>> discountedFruits = [];

  for (var fruit in fruits) {
    // Create a copy of the fruit map

    Map<String, dynamic> discountedFruit = Map.from(fruit);

    // Apply discount to the copied price

    discountedFruit["price"] = discountedFruit["price"] * (1 - discount);

    // Add the discounted fruit to the new list

    discountedFruits.add(discountedFruit);
  }

  return discountedFruits;
}

void displayFruitDetails(List<Map<String, dynamic>> fruits) {
  for (var fruit in fruits) {
    print(
        "Name: ${fruit["name"]}, Color: ${fruit["color"]}, Price: \$${fruit["price"].toStringAsFixed(2)}");
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
      "name": "Grapes",
      "color": "Purple",
      "price": 2.75,
    },
  ];

  // Apply 10% discount

  double discount = 0.1;
  List<Map<String, dynamic>> discountedFruits =
      applyPriceDiscount(fruits, discount);

  // Display original fruits (unchanged)

  print("Original fruits:");
  displayFruitDetails(fruits);

  // Display fruits with discount (new list)

  print("\nFruits with ${discount * 100}% discount:");
  displayFruitDetails(discountedFruits);
}
