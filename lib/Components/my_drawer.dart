// Components/my_drawer.dart
import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:hungry_buddy/Components/my_drawer_tile.dart";
import "package:hungry_buddy/Page/settings_page.dart";
import "package:hungry_buddy/Services/Auth/auth_service.dart";

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  void logout() {
    final authService = AuthServices();
    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Theme.of(context).colorScheme.background,
        child: Column(
          children: [
            // app logo
            Padding(
              padding:  EdgeInsets.only(top: 100.0.h),
              child: Icon(
                Icons.lock_open_rounded,
                size: 80.r,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            Padding(
              padding:  EdgeInsets.all(25.0.r),
              child: Divider(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),

            // home list tile
            MyDrawerTile(
              text: "H O M E",
              onTap: () => Navigator.pop(context),
              icon: Icons.home,
            ),

            // settings list tile
            MyDrawerTile(
              text: "S E T T I N G S",
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsPage(),
                  ),
                );
              },
              icon: Icons.settings,
            ),

            const Spacer(),

            // logout list tile
            MyDrawerTile(
              text: "L O G O U T",
              onTap: () {
                logout();
              },
              icon: Icons.logout_sharp,
            ),

             SizedBox(
              height: 25.0.h,
            )
          ],
        ));
  }
}
