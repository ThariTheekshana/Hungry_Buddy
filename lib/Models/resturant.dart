// Models/resturant.dart

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:hungry_buddy/Models/cart_item.dart';
import 'package:hungry_buddy/Models/food.dart';

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
          name: "'Extra Onions",
          price: 0.70,
        ),
        Addon(
          name: "'Extra Mayoo",
          price: 0.89,
        ),
        Addon(
          name: "'Extra Pinapple",
          price: 0.99,
        ),
      ],
    ),

    // desserts
    Food(
      name: "Banana Cake",
      description: 'A banana cake good for your dessert',
      imagePath: 'lib/assets/images/desserts/banan_cake.jpg',
      price: 2.99,
      category: FoodCategory.deserts,
      availableAddons: [
        Addon(
          name: "ice Cream",
          price: 0.99,
        ),
        Addon(
          name: "Caramel",
          price: 0.99,
        ),
      ],
    ),
    Food(
      name: "Chocolate Truffle Tart",
      description: 'A new item',
      imagePath: 'lib/assets/images/desserts/chocolate_truffle_tart.jpg',
      price: 1.99,
      category: FoodCategory.deserts,
      availableAddons: [
        Addon(
          name: "Ice cream",
          price: 0.99,
        ),
      ],
    ),
    Food(
      name: "Classic Vanilla Panna Cotta",
      description: 'A Classic Vanilla Panna Cotta is our new dessert ',
      imagePath: 'lib/assets/images/desserts/classic_vanilla_panna_cotta.jpg',
      price: 6.99,
      category: FoodCategory.deserts,
      availableAddons: [
        Addon(
          name: "'Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "'Extra Pinapple",
          price: 0.99,
        ),
      ],
    ),
    Food(
      name: "Creamy Caramel Flan",
      description: 'A Creamy Caramel Flan is our new dessert ',
      imagePath: 'lib/assets/images/desserts/creamy_caramel_flan.jpg',
      price: 6.99,
      category: FoodCategory.deserts,
      availableAddons: [
        Addon(
          name: "'Extra Cheese",
          price: 0.99,
        ),
      ],
    ),
    Food(
      name: "Heavenly Black Forest",
      description: 'A Heavenly Black Forest is our new desserts',
      imagePath: 'lib/assets/images/desserts/heavenly_black_forest.jpg',
      price: 6.99,
      category: FoodCategory.deserts,
      availableAddons: [
        Addon(
          name: "'Extra Pinapple",
          price: 0.99,
        ),
      ],
    ),

    // sides
    Food(
      name: "Crispy Rost Potatos",
      description: 'A Heavenly Black Forest is our new desserts',
      imagePath: 'lib/assets/images/sides/crispy_rost_potatos.jpg',
      price: 6.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(
          name: "'Extra Pinapple",
          price: 0.99,
        ),
      ],
    ),
    Food(
      name: "French Onion Potatos.jpg",
      description: 'A Heavenly Black Forest is our new desserts',
      imagePath: 'lib/assets/images/sides/french_onion_potatos.jpg',
      price: 6.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(
          name: "'Extra Pinapple",
          price: 0.99,
        ),
      ],
    ),
    Food(
      name: "Lemon Verb Potatos",
      description: 'A Heavenly Black Forest is our new desserts',
      imagePath: 'lib/assets/images/sides/lemon_herb_potatos.jpg',
      price: 6.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(
          name: "'Extra Pinapple",
          price: 0.99,
        ),
      ],
    ),
    Food(
      name: "Potatoes Au Gratin",
      description: 'A Heavenly Black Forest is our new desserts',
      imagePath: 'lib/assets/images/sides/potatoes_au_gratin.jpg',
      price: 6.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(
          name: "'Extra Pinapple",
          price: 0.99,
        ),
      ],
    ),
    Food(
      name: "Reasted Carrot",
      description: 'A Heavenly Black Forest is our new desserts',
      imagePath: 'lib/assets/images/sides/reasted_carrot.jpg',
      price: 6.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(
          name: "'Extra Pinapple",
          price: 0.99,
        ),
      ],
    ),

    // salads
    Food(
      name: "Avacado Tuna Salad",
      description: 'An Avacado Tuna Salad our new salad',
      imagePath: 'lib/assets/images/salads/avacado_tuna_salad.jpg',
      price: 6.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(
          name: "'Extra Pinapple",
          price: 0.99,
        ),
      ],
    ),
    Food(
      name: "BBQ Summer Salad",
      description: "This is our new BBQ Summer Salad",
      imagePath: 'lib/assets/images/salads/bbq_summer_salad.jpg',
      price: 6.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(
          name: "'Extra Pinapple",
          price: 0.99,
        ),
      ],
    ),
    Food(
      name: "Classic Geek Salad",
      description: "This is our new Classic Geek Salad",
      imagePath: 'lib/assets/images/salads/classic_geek_slad.jpg',
      price: 6.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(
          name: "'Extra Pinapple",
          price: 0.99,
        ),
      ],
    ),
    Food(
      name: "Grilled Chicken Caeser Salad",
      description: 'Grilled Chicken Caeser Salad',
      imagePath: 'lib/assets/images/salads/Grilled_chicken_caeser_salad.jpg',
      price: 6.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(
          name: "'Extra Pinapple",
          price: 0.99,
        ),
      ],
    ),
    Food(
      name: "Quinoa Salad",
      description: 'A Quinoa Salad is our new Salad',
      imagePath: 'lib/assets/images/salads/quinoa_salad.jpg',
      price: 6.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(
          name: "'Extra Pinapple",
          price: 0.99,
        ),
      ],
    ),

    // drinks
    Food(
      name: "Buba Tea",
      description: 'A Buba Tea is our new drink',
      imagePath: 'lib/assets/images/drinks/buba_tea.jpg',
      price: 6.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(
          name: "'Extra Pinapple",
          price: 0.99,
        ),
      ],
    ),
    Food(
      name: "Mojito",
      description: 'A Mojito is our new drink',
      imagePath: 'lib/assets/images/drinks/mojito.jpg',
      price: 6.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(
          name: "'Extra Pinapple",
          price: 0.99,
        ),
      ],
    ),
    Food(
      name: "Orange Mojito",
      description: 'An Orange Mojito is our new drink',
      imagePath: 'lib/assets/images/drinks/orange_mojito.jpg',
      price: 6.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(
          name: "'Extra Pinapple",
          price: 0.99,
        ),
      ],
    ),
    Food(
      name: "Pinapple Shake",
      description: 'A Pinapple Shake is our new drink',
      imagePath: 'lib/assets/images/drinks/pinapple_shake.jpg',
      price: 6.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(
          name: "'Extra Pinapple",
          price: 0.99,
        ),
      ],
    ),
    Food(
      name: "Pink Lemonade Cocktail",
      description: 'A Pink Lemonade Cocktail is our new drink',
      imagePath: 'lib/assets/images/drinks/pink_lemonade_cocktail.jpg',
      price: 6.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(
          name: "'Extra Pinapple",
          price: 0.99,
        ),
      ],
    ),
  ];

  /*
  
  G E T T E R S
  
  */
  List<Food> get menu => _menu;

  /*
  
  O P E R A T I O N S 
  
  */

  // user cart
  final List<CartItem> _cart = [];

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

  /*
  
  H E L P E R S 
  
  */

  // generate a receipt

  // format double value into money

  // format list of addons into a string summary
}
