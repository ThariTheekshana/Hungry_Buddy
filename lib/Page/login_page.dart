// Page/login_page.dart
// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hungry_buddy/Components/my_button.dart';
import 'package:hungry_buddy/Components/my_textFields.dart';
import 'package:hungry_buddy/Services/Auth/auth_service.dart';

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
  void login() async {
    // get instance of auth service
    final _authService = AuthServices();

    // try sign in
    try {
      await _authService.signInWithEmailPassword(
        emailConroller.text,
        passwordController.text,
      );
    }

    // display any errors
    catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(
            e.toString(),
          ),
        ),
      );
    }
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
            size: 100.r,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),

           SizedBox(height: 25.h),

          //message, app slogan
          Text(
            "Hungry Buddy",
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.inversePrimary),
          ),

           SizedBox(height: 25.h),

          // email textfield
          MyTextField(
            controller: emailConroller,
            hintText: "Email",
            obscureText: false,
          ),

           SizedBox(height: 25.h),

          // password textfirld
          MyTextField(
            controller: passwordController,
            hintText: "Password",
            obscureText: true,
          ),

           SizedBox(height: 25.h),

          // Sign in button
          MyButton(
            onTap: login,
            text: "Sign In",
          ),

           SizedBox(height: 25.h),

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
               SizedBox(width: 4.w),
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
