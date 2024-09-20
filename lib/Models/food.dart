// Models/food.dart

// food items
class Food {
  final String name;              // cheese burger
  final String description;       // a burgur full of cheese
  final String imagePath;         // lib/images/chees_burger.png
  final double price;             // 4.99
  final FoodCategory category;    // burger
  List<Addon> availableAddons;    // [extra cheese, sourse]

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.availableAddons
  });
}

// food categories
enum FoodCategory {
  burgers,
  salads,
  sides,
  deserts,
  drinks,
}

// food addons
class Addon {
  String name;
  double price;

  Addon({
    required this.name,
    required this.price,
  });
}
