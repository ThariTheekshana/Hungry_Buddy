// Components/my_sliver_appbar.dart
import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:hungry_buddy/Page/cart_page.dart";

class MySliverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;

  const MySliverAppBar({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      actions: [
        IconButton(
          onPressed: () {
            // go to cart page
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CartPage(),
              ),
            );
          },
          icon: const Icon(
            Icons.shopping_cart,
          ),
        ),
      ],
      backgroundColor: Theme.of(context).colorScheme.background,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: const Text("HungryBuddy Dinner"),
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding:  EdgeInsets.only(bottom: 50.0.h),
          child: child,
        ),
        title: title,
        centerTitle: true,
        titlePadding:  EdgeInsets.only(left: 0.w, right: 0.w, top: 0.h),
        expandedTitleScale: 1,
      ),
    );
  }
}
