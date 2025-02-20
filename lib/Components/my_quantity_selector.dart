// Components/my_quantity_selector.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hungry_buddy/Models/food.dart';

class QuantitySelector extends StatelessWidget {
  final int quantity;
  final Food food;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const QuantitySelector({
    super.key,
    required this.quantity,
    required this.food,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: BorderRadius.circular(50.r),
        ),
        padding:  EdgeInsets.all(8.r),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // decrease button
            GestureDetector(
              onTap: onDecrement,
              child: Icon(
                Icons.remove,
                size: 20.r,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),

            // quantity count
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 8.w),
              child: SizedBox(
                width: 20.w,
                child: Center(
                  child: Text(
                    quantity.toString(),
                  ),
                ),
              ),
            ),

            // increase button
            GestureDetector(
              onTap: onIncrement,
              child: Icon(
                Icons.add,
                size: 20.r,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        ));
  }
}
