// Components/my_receipt.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hungry_buddy/Models/resturant.dart';
import 'package:provider/provider.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:  EdgeInsets.only(left: 25.w, right: 25.w, bottom: 5.h, top: 5.h),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Thank you for your order!",
              ),
               SizedBox(
                height: 25.h,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).colorScheme.secondary),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                padding:  EdgeInsets.all(25.r),
                child: Consumer<Resturant>(
                  builder: (context, restaurent, child) =>
                      Text(restaurent.displayCartReceipt()),
                ),
              ),
               SizedBox(
                height: 20.h,
              ),
              const Text("Estimated delivery time is: 6:20 PM")
            ],
          ),
        ));
  }
}
