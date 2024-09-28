// Components/my_food_tile.dart
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hungry_buddy/Models/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final void Function()? ontap;

  const FoodTile({super.key, required this.food, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: ontap,
          child: Padding(
            padding:  EdgeInsets.all(15.0.r),
            child: Row(
              children: [
                // text food details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(food.name),
                      Text(
                        '\$' + food.price.toString(),
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                       SizedBox(height: 10.0.h),
                      Text(
                        food.description,
                        style: TextStyle(
                            color:
                                Theme.of(context).colorScheme.inversePrimary),
                      ),
                    ],
                  ),
                ),

                 SizedBox(width: 15.w),

                // food image
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: Image.asset(
                    food.imagePath,
                    height: 120.0.h,
                  ),
                )
              ],
            ),
          ),
        ),

        // dicider line
        Divider(
          color: Theme.of(context).colorScheme.tertiary,
          endIndent: 25.w,
          indent: 25.w,
        )
      ],
    );
  }
}
