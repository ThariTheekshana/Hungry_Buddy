// Page/login_page.dart
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hungry_buddy/Components/my_button.dart';
import 'package:hungry_buddy/Components/my_textFields.dart';
import 'package:hungry_buddy/Page/home_page.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Conttrollers
  TextEditingController emailConroller = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  // login method
  void login() {
    /* 
    
    fill out authentication here

    */

    // navigate to home screen
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          // logo
          Icon(
            Icons.lock_open_rounded,
            size: 100,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),

          const SizedBox(height: 25),

          //message, app slogan
          Text(
            "Hungry Buddy",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.inversePrimary),
          ),

          const SizedBox(height: 25),

          // email textfield
          MyTextField(
            controller: emailConroller,
            hintText: "Email",
            obscureText: false,
          ),

          const SizedBox(height: 25),

          // password textfirld
          MyTextField(
            controller: passwordController,
            hintText: "Password",
            obscureText: true,
          ),

          const SizedBox(height: 25),

          // Sign in button
          MyButton(
            onTap: login,
            text: "Sign In",
          ),

          const SizedBox(height: 25),

          // not a member? register now
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Not a member?",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              const SizedBox(width: 4),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  "Register now",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
