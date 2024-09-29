// Models/resturant.dart

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:hungry_buddy/Models/cart_item.dart';
import 'package:hungry_buddy/Models/food.dart';
import 'package:intl/intl.dart';

class Resturant extends ChangeNotifier {
  // list of food menu
  final List<Food> _menu = [
    // burgers
    Food(
      name: "Aloha Burger",
      description:
          'A aloha burger is our new burger, this one is sooo tasty and creamy',
      imagePath: 'lib/assets/images/burgers/alohaBurger.jpg',
      price: 6.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Extra Onions",
          price: 0.70,
        ),
        Addon(
          name: "Extra Mayoo",
          price: 0.89,
        ),
        Addon(
          name: "Extra Pinapple",
          price: 0.99,
        ),
      ],
    ),
    Food(
      name: "BBQ Burger",
      description:
          'A BBQ burger is very hot burger, there are crispy chicken included here',
      imagePath: 'lib/assets/images/burgers/BBQburger.jpg',
      price: 7.89,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Extra Onions",
          price: 0.70,
        ),
        Addon(
          name: "Extra Mayoo",
          price: 0.89,
        ),
        Addon(
          name: "Extra Pinapple",
          price: 0.99,
        ),
         Addon(
          name: "Extra Tomatos",
          price: 0.99,
        ),
      ],
    ),
    Food(
      name: "Cheese Burger",
      description:
          'A cheese burger can you buy from us, this one is veruy creamy, and cheesy',
      imagePath: 'lib/assets/images/burgers/cheeseBurger.jpg',
      price: 10.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Extra Onions",
          price: 0.70,
        ),
        Addon(
          name: "Extra Mayoo",
          price: 0.89,
        ),
        Addon(
          name: "Extra Pinapple",
          price: 0.99,
        ),
         Addon(
          name: "Extra Pinapple",
          price: 0.99,
        ),
      ],
    ),
    Food(
      name: "Honey Pork Burger",
      description:
          'A very special burger for pork lovers, spicy pork with cheesy',
      imagePath: 'lib/assets/images/burgers/honey pork bbq burger.jpg',
      price: 12.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Extra Onions",
          price: 0.70,
        ),
        Addon(
          name: "Extra Pinapple",
          price: 0.99,
        ),
      ],
    ),
    Food(
      name: "Smash Burger",
      description: 'A budget burger from use for your small hungry',
      imagePath: 'lib/assets/images/burgers/smash burger.jpg',
      price: 4.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Extra Onions",
          price: 0.70,
        ),
        Addon(
          name: "'Extra Mayoo",
          price: 0.89,
        ),
         Addon(
          name: "Extra Tomatos",
          price: 0.99,
        ),
      ],
    ),

    // desserts
    Food(
      name: "Banana Cake",
      description: 'Treat yourself to a slice of happiness with our moist and flavorful Banana Cake. Made with ripe, mashed bananas, this cake is incredibly tender and bursting with natural sweetness. Each bite is enriched with hints of vanilla and a touch of cinnamon, creating a comforting and nostalgic flavor experience.',
      imagePath: 'lib/assets/images/desserts/banan_cake.jpg',
      price: 2.99,
      category: FoodCategory.deserts,
      availableAddons: [
        Addon(
          name: "Extra Ice Cream",
          price: 0.60,
        ),
        Addon(
          name: "Extra Honey",
          price: 0.84,
        ),
        Addon(
          name: "Extra Chocolate",
          price: 0.90,
        ),
      ],
    ),
    Food(
      name: "Chocolate Truffle Tart",
      description: "Indulge in the ultimate chocolate lover's dream with our Chocolate Truffle Tart. This luxurious dessert features a velvety, rich chocolate filling that melts in your mouth, nestled within a perfectly crisp and buttery tart shell. Each bite is a harmonious blend of deep cocoa flavor and creamy texture, topped with a glossy ganache that adds an extra layer of indulgence.",
      imagePath: 'lib/assets/images/desserts/chocolate_truffle_tart.jpg',
      price: 4.99,
      category: FoodCategory.deserts,
      availableAddons: [
        Addon(
          name: "Extra Strewberry",
          price: 0.75,
        ),
        Addon(
          name: "Extra Cherry",
          price: 0.79,
        ),
      ],
    ),
    Food(
      name: "Classic Vanilla Panna Cotta",
      description: 'Savor the silky, creamy delight of our Classic Vanilla Panna Cotta, a timeless Italian dessert that epitomizes elegance. Made with the finest vanilla bean and rich cream, this luscious treat is gently set to perfection, creating a melt-in-your-mouth experience. Each spoonful is a harmonious blend of sweet and subtle vanilla flavors, beautifully complemented by a drizzle of fresh fruit coulis or a sprinkle of seasonal berries.',
      imagePath: 'lib/assets/images/desserts/classic_vanilla_panna_cotta.jpg',
      price: 6.88,
      category: FoodCategory.deserts,
      availableAddons: [
        Addon(
          name: "'Extra Pinuts",
          price: 0.99,
        ),
      ],
    ),
    Food(
      name: "Creamy Caramel Flan",
      description: 'Indulge in the velvety sweetness of our Creamy Caramel Flan, a classic dessert that delights the senses. This luscious custard is expertly crafted with rich cream, eggs, and a hint of vanilla, resulting in a smooth and silky texture that melts in your mouth.',
      imagePath: 'lib/assets/images/desserts/creamy_caramel_flan.jpg',
      price: 4.43,
      category: FoodCategory.deserts,
      availableAddons: [
        Addon(
          name: "'Extra Caramel",
          price: 0.77,
        ),
      ],
    ),
    Food(
      name: "Heavenly Black Forest",
      description: 'Experience a slice of pure bliss with our Heavenly Black Forest Cake, a sumptuous treat that combines layers of rich chocolate sponge cake, luscious whipped cream, and juicy cherries. Each bite unveils a delightful contrast of textures, from the moist, chocolatey layers to the airy cream and the sweet-tart cherries',
      imagePath: 'lib/assets/images/desserts/heavenly_black_forest.jpg',
      price: 5.00,
      category: FoodCategory.deserts,
      availableAddons: [
        Addon(
          name: "'Extra Cherry",
          price: 0.19,
        ),
        Addon(
          name: "'Extra Chocolate",
          price: 0.29,
        ),
        Addon(
          name: "'Extra Whipped Cream",
          price: 0.19,
        ),
      ],
    ),

    // sides
    Food(
      name: "Crispy Rost Potatos",
      description: 'Golden, crispy, and perfectly seasoned, our Crispy Roast Potatoes are the ultimate comfort side dish. Roasted to perfection, these tender potatoes have a crunchy exterior and a soft, fluffy inside. Tossed in fragrant herbs and a dash of garlic, every bite bursts with flavor.',
      imagePath: 'lib/assets/images/sides/crispy_rost_potatos.jpg',
      price: 5.30,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(
          name: "Extra Black Paper",
          price: 0.32,
        ),
        Addon(
          name: "Extra Chlli",
          price: 0.20,
        ),
      ],
    ),
    Food(
      name: "French Onion Potatos",
      description: 'Indulge in the rich, savory flavors of our French Onion Potatoes. Tender roasted potatoes are infused with the deep, caramelized essence of sautéed onions, smothered in a creamy, herb-seasoned sauce, and topped with a layer of melted cheese. Each bite is a delicious harmony of golden potatoes and the irresistible taste of classic French onion soup.',
      imagePath: 'lib/assets/images/sides/french_onion_potatos.jpg',
      price: 7.89,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(
          name: "Extra Onions",
          price: 0.43,
        ),
        Addon(
          name: "Extra Cheese",
          price: 0.48,
        ),
      ],
    ),
    Food(
      name: "Lemon Verb Potatos",
      description: 'Bright, tangy, and full of flavor, our Lemon Herb Potatoes are a refreshing twist on a classic favorite. Roasted until golden and crispy, these tender potatoes are infused with fresh lemon juice and a blend of fragrant herbs like rosemary and thyme',
      imagePath: 'lib/assets/images/sides/lemon_herb_potatos.jpg',
      price: 5.03,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(
          name: "Extra Lemon",
          price: 0.37,
        ),
        Addon(
          name: "Extra Pinapple",
          price: 0.27,
        ),
      ],
    ),
    Food(
      name: "Potatoes Au Gratin",
      description: 'Indulge in layers of creamy decadence with our Potatoes Au Gratin. Thinly sliced potatoes are baked to perfection in a rich, velvety blend of cream, butter, and garlic, then topped with a golden, bubbly layer of melted cheese. Each bite is a heavenly combination of tender potatoes and savory, cheesy goodness.',
      imagePath: 'lib/assets/images/sides/potatoes_au_gratin.jpg',
      price: 8.32,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.79,
        ),
        Addon(
          name: "Extra Chilli Sause",
          price: 0.53,
        ),
      ],
    ),
    Food(
      name: "Reasted Carrot",
      description: 'Sweet, tender, and caramelized to perfection, our Roasted Carrots are a simple yet flavorful delight. Tossed in olive oil and seasoned with a hint of honey and herbs, these carrots are roasted until their natural sweetness shines through with a subtle golden finish. ',
      imagePath: 'lib/assets/images/sides/reasted_carrot.jpg',
      price: 6.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(
          name: "Extra  baked mac and cheese",
          price: 0.71,
        ),
        Addon(
          name: "Extra gravy,",
          price: 0.34,
        ),
      ],
    ),

    // salads
    Food(
      name: "Avacado Tuna Salad",
      description: 'This Avocado Tuna Salad has a simple and surprising combination of ingredients but it just works! This tuna salad can be served on the side with dinner or as a very satisfying lunch because it comes together quickly and is loaded with protein.',
      imagePath: 'lib/assets/images/salads/avacado_tuna_salad.jpg',
      price: 6.09,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(
          name: "Extra Meats",
          price: 0.89,
        ),
        Addon(
          name: "Extra Onions",
          price: 0.59,
        ),
        Addon(
          name: "Extra garlic",
          price: 0.68,
        ),
      ],
    ),
    Food(
      name: "BBQ Summer Salad",
      description: "A perfect blend of fresh, crisp greens and smoky BBQ flavor, our BBQ Summer Salad brings the taste of summer to your table. Bursting with juicy grilled chicken, sweet corn, ripe cherry tomatoes, and a sprinkle of tangy feta, this salad is a delightful balance of vibrant flavors and textures. Topped with a zesty BBQ vinaigrette, it’s the perfect companion for outdoor gatherings, light lunches, or simply enjoying the essence of summer in every bite!",
      imagePath: 'lib/assets/images/salads/bbq_summer_salad.jpg',
      price: 7.77,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(
          name: "'Extra Sauce",
          price: 0.97,
        ),
      ],
    ),
    Food(
      name: "Classic Geek Salad",
      description: "Savor the timeless flavors of the Mediterranean with our Classic Greek Salad. Crisp cucumbers, juicy vine-ripened tomatoes, and bold Kalamata olives come together with crunchy bell peppers and red onions. Topped with creamy, tangy feta cheese and a drizzle of extra virgin olive oil, this salad is a perfect harmony of freshness and flavor.",
      imagePath: 'lib/assets/images/salads/classic_geek_slad.jpg',
      price: 6.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(
          name: "Extra Onions",
          price: 0.99,
        ),
        Addon(
          name: "Extra Pinapple",
          price: 0.95,
        ),
        Addon(
          name: "Extra Avacado",
          price: 0.89,
        ),
      ],
    ),
    Food(
      name: "Grilled Chicken Caeser Salad",
      description: 'Experience a classic with a savory twist in our Grilled Chicken Caesar Salad. Tender, juicy grilled chicken breast rests atop a bed of crisp romaine lettuce, perfectly tossed in a creamy, tangy Caesar dressing. ',
      imagePath: 'lib/assets/images/salads/Grilled_chicken_caeser_salad.jpg',
      price: 7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(
          name: "Extra Chicken",
          price: 0.89,
        ),
        Addon(
          name: "Extra Cheese",
          price: 0.69,
        ),
      ],
    ),
    Food(
      name: "Quinoa Salad",
      description: 'Light, nutritious, and bursting with flavor, our Quinoa Salad is a wholesome delight. Fluffy quinoa is paired with crisp cucumbers, juicy cherry tomatoes, sweet bell peppers, and a handful of fresh herbs, creating a vibrant medley of textures.',
      imagePath: 'lib/assets/images/salads/quinoa_salad.jpg',
      price: 6.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(
          name: "Extra Tomato sauce",
          price: 0.98,
        ),
        Addon(
          name: "Extra Chilli",
          price: 0.80,
        ),
      ],
    ),

    // drinks
    Food(
      name: "Buba Tea",
      description: 'Dive into a world of flavor and fun with our Bubble Tea! This delightful drink features a refreshing blend of smooth, creamy tea combined with your choice of luscious flavors, from classic milk tea to fruity concoctions. The star of the show is the chewy tapioca pearls, or “boba,” that add a playful texture to every sip.',
      imagePath: 'lib/assets/images/drinks/buba_tea.jpg',
      price: 1.09,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(
          name: "'Extra Milk",
          price: 0.59,
        ),
        Addon(
          name: "'Extra Bubbles",
          price: 0.29,
        ),
        Addon(
          name: "'Extra Cream",
          price: 0.12,
        ),
      ],
    ),
    Food(
      name: "Mojito",
      description: 'Quench your thirst with our refreshing Mojito, a classic cocktail that perfectly balances the zesty brightness of fresh lime, the coolness of mint, and the sweetness of sugar. This invigorating drink is crafted with premium white rum and sparkling soda, creating a light and bubbly experience that’s perfect for any occasion. ',
      imagePath: 'lib/assets/images/drinks/mojito.jpg',
      price: 6.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(
          name: "'Extra Lemon",
          price: 0.09,
        ),
      ],
    ),
    Food(
      name: "Orange Mojito",
      description: 'Brighten your day with our delightful Orange Mojito, a vibrant twist on the classic cocktail! This refreshing drink combines the zesty flavors of fresh orange juice and juicy lime, harmoniously blended with crisp mint leaves and a touch of sugar.',
      imagePath: 'lib/assets/images/drinks/orange_mojito.jpg',
      price: 1.12,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(
          name: "Extra Orange",
          price: 0.29,
        ),
      ],
    ),
    Food(
      name: "Pinapple Shake",
      description: 'Transport your taste buds to a sunny paradise with our creamy Pineapple Shake! This delightful treat features the sweet and tangy flavor of ripe pineapples blended to perfection with rich ice cream and a splash of milk, creating a smooth and luscious texture. Topped with a dollop of whipped cream and a sprinkle of pineapple chunks, each sip is a refreshing burst of tropical goodness.',
      imagePath: 'lib/assets/images/drinks/pinapple_shake.jpg',
      price: 2.01,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(
          name: "'Extra Pinapple",
          price: 0.43,
        ),
        Addon(
          name: "'Extra Ice cream",
          price: 0.52,
        ),
      ],
    ),
    Food(
      name: "Pink Lemonade Cocktail",
      description: 'Sip into summer with our delightful Pink Lemonade Cocktail, a refreshing blend that’s as beautiful as it is delicious! This eye-catching drink combines freshly squeezed lemons with a hint of sweetness and a splash of berry-infused spirits for a fruity twist. Served over ice and garnished with fresh lemon slices and a sprig of mint, each sip bursts with bright, zesty flavor.',
      imagePath: 'lib/assets/images/drinks/pink_lemonade_cocktail.jpg',
      price: 2.04,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(
          name: "'Extra Soda",
          price: 0.12,
        ),
      ],
    ),
  ];

  // user cart
  final List<CartItem> _cart = [];

  // delivery address (which user can change/update)
  String _deliveryAddress = "98 Hollywood Blv";

  /*
  
  G E T T E R S
  
  */
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  /*
  
  O P E R A T I O N S 
  
  */

  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are the same
      bool isSameFood = item.food == food;

      // check if the list of selected addons are the same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    // if item already exists, increase it's quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    // otherwise, add a new cart item to the cart
    else {
      _cart.add(CartItem(
        food: food,
        selectedAddons: selectedAddons,
      ));
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }

    notifyListeners();
  }

  // get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }

    return total;
  }

  // get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  // update delivery address
  void updateDeliverAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }
  /*
  
  H E L P E R S 
  
  */

  // generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    // format the date to include up to seconds only
    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln('------------------------------------------');

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt
            .writeln("     Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }

    receipt.writeln('------------------------------------------');
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Delivering to: $deliveryAddress");

    return receipt.toString();
  }

  // format double value into money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  // format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
