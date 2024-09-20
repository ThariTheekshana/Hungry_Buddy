// Auth/login_or_register.dart
import "package:flutter/material.dart";
import "package:hungry_buddy/Page/login_page.dart";
import "package:hungry_buddy/Page/register_page.dart";

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  // initially, show login page
  bool showLogingpage = true;

  // toggle between login and register pages
  void togglePages() {
    setState(() {
      showLogingpage = !showLogingpage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLogingpage) {
      return LoginPage(onTap: togglePages);
    } else {
      return RegisterPage(onTap: togglePages);
    }
  }
}
