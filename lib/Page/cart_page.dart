// Page/cart_page.dart
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hungry_buddy/Components/my_button.dart';
import 'package:hungry_buddy/Components/my_cart_tile.dart';
import 'package:hungry_buddy/Models/resturant.dart';
import 'package:hungry_buddy/Page/payment_page.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Resturant>(builder: (context, restuarent, child) {
      // cart
      final userCart = restuarent.cart;

      // scaffold UI
      return Scaffold(
          appBar: AppBar(
            title: const Text(
              "Cart",
            ),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              // clear cart button
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text(
                          'Are you sure you want to clear the cart?'),
                      actions: [
                        // cancel button
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("Cancel"),
                        ),

                        // yes button
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            restuarent.clearCart();
                          },
                          child: const Text("Yes"),
                        ),
                      ],
                    ),
                  );
                },
                icon: const Icon(Icons.delete),
              )
            ],
          ),
          body: Column(
            children: [
              // list of cart
              Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty
                        ? const Expanded(
                            child: Center(
                                child: Text(
                            "Cart is empty...",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          )))
                        : Expanded(
                            child: ListView.builder(
                                itemCount: userCart.length,
                                itemBuilder: (context, index) {
                                  // get individual cart item
                                  final cartItem = userCart[index];
                                  // return cart tile UI
                                  return MyCartTile(cartItem: cartItem);
                                }),
                          )
                  ],
                ),
              ),

              // button to pay
              MyButton(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Paymentpage(),
                    )),
                text: "Go to the Pay",
              ),

              const SizedBox(
                height: 25,
              )
            ],
          ));
    });
  }
}
