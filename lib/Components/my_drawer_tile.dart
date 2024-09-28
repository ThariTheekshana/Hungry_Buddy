// Components/my_drawer_tile.dart
import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

class MyDrawerTile extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  final IconData? icon;

  const MyDrawerTile(
      {super.key, required this.text, required this.onTap, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 25.0.w),
      child: ListTile(
        title: Text(
          text,
          style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
        ),
        leading: Icon(
          icon,
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
        onTap: onTap,
      ),
    );
  }
}
