// Components/my_button.dart
import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String text;

  const MyButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding:  EdgeInsets.all(25.r),
        margin:  EdgeInsets.symmetric(horizontal: 25.r),
        decoration: 
        BoxDecoration(color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(8.r)),
        child: Center(
          child: Text(
            text, 
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.inversePrimary,
              fontSize: 16.sp,
            ),
          ),
        )
      )
    );
  }
}
