// Components/my_receipt.dart
import 'package:flutter/material.dart';
import 'package:hungry_buddy/Models/resturant.dart';
import 'package:provider/provider.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, bottom: 5, top: 5),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Thank you for your order!",
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).colorScheme.secondary),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(25),
                child: Consumer<Resturant>(
                  builder: (context, restaurent, child) =>
                      Text(restaurent.displayCartReceipt()),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Estimated delivery time is: 6:20 PM")
            ],
          ),
        ));
  }
}
