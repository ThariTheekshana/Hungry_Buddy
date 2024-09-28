// Components/my_cart_tile.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hungry_buddy/Components/my_quantity_selector.dart';
import 'package:hungry_buddy/Models/cart_item.dart';
import 'package:hungry_buddy/Models/resturant.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;

  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Resturant>(
      builder: (context, restaurent, child) => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8.r),
        ),
        margin:  EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.all(8.0.r),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // food name
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.r),
                    child: Image.asset(
                      cartItem.food.imagePath,
                      height: 100.h,
                      width: 100.w,
                    ),
                  ),

                   SizedBox(width: 10.w),

                  // name and price
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // food name
                        Text(cartItem.food.name,
                            maxLines: 1, // Ensures the text stays on one line
                            overflow: TextOverflow
                                .ellipsis // Adds '...' if the text overflows
                            ),

                        // food price
                        Text(
                          '\$' + cartItem.food.price.toString(),
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),

                         SizedBox(
                          height: 10.w,
                        ),

                        // increment or decrement quantity
                        QuantitySelector(
                          quantity: cartItem.quantity,
                          food: cartItem.food,
                          onIncrement: () {
                            restaurent.addToCart(
                                cartItem.food, cartItem.selectedAddons);
                          },
                          onDecrement: () {
                            restaurent.removeFromCart(cartItem);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // addons
            SizedBox(
                height: cartItem.selectedAddons.isEmpty ? 0 : 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding:
                       EdgeInsets.only(left: 10.w, bottom: 10.h, right: 10.w),
                  children: cartItem.selectedAddons
                      .map(
                        (addon) => Padding(
                          padding:  EdgeInsets.only(right: 8.0.w),
                          child: FilterChip(
                            label: Row(
                              children: [
                                // addon name
                                Text(addon.name),

                                // addon price
                                Text(' (\$${addon.price})'),
                              ],
                            ),
                            shape: StadiumBorder(
                              side: BorderSide(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                            onSelected: (value) {},
                            backgroundColor:
                                Theme.of(context).colorScheme.secondary,
                            labelStyle: TextStyle(
                              color:
                                  Theme.of(context).colorScheme.inversePrimary,
                              fontSize: 12.sp,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ))
          ],
        ),
      ),
    );
  }
}
