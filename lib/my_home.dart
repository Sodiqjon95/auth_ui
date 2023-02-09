import 'package:auth_ui/widgets/my_button.dart';
import 'package:auth_ui/widgets/my_textfield.dart';
import 'package:auth_ui/widgets/square_tile.dart';
import 'package:auth_ui/widgets/square_tile2.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  //text editing controllers

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  final forgedPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const SizedBox(height: 50),
          //logo
          const Icon(
            Icons.lock,
            size: 100,
          ),
          const SizedBox(height: 50),

          //welcome back you've been missed,
          Text(
            "Welcome back  ",
            style: TextStyle(color: Colors.grey[700], fontSize: 16),
          ),
          const SizedBox(height: 25),

          //user name textfield
          MyTextField(
            controller: userNameController,
            hintText: 'Name',
            obscureText: false,
          ),
          const SizedBox(height: 10),

          //password textfield
          MyTextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true),
          const SizedBox(height: 10),

          //forget password?

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Forget Password?",
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),

          //sign in button

          MyButton(
            onTap: signUserIn,
          ),
          const SizedBox(height: 50),

          //or continue with
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    "Or continue with",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ),
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),

          // google + apple sign i button

          // variant 1

          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [

          // SquareTile(
          //   imagePath: "assets/images/google.png",
          //   onTap: () {},
          // ),
          // const SizedBox(width: 25),
          // SquareTile(
          //   imagePath: "assets/images/apple.png",
          //   onTap: () {},
          // ),

          // ],
          // ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                // variant 2
                SquareTile2(
                    imagePath: "assets/images/google.png",
                    onTap: () {},
                    title: "Google account"),
                const SizedBox(height: 10),

                SquareTile2(
                    imagePath: "assets/images/apple.png",
                    onTap: () {},
                    title: "Apple account"),
              ],
            ),
          ),
          const SizedBox(height: 50),

          // not a member? register now

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Not a member ?",
                style: TextStyle(color: Colors.grey[700]),
              ),
              const SizedBox(width: 4),
              TextButton(
                child: const Text(
                  "Register now",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {},
              ),
            ],
          )
        ]),
      )),
    );
  }

//sign user in method
  void signUserIn() {}
}
