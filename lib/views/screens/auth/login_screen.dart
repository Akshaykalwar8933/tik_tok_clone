// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tak_tok/controller/auth_controller.dart';
import 'package:tak_tok/views/widgets/glitch.dart';
import 'package:tak_tok/views/widgets/text_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GlithEffect(
              child: Text(
            "Login Here",
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
          )),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: TextInput(
                controller: _emailController,
                myIcon: Icons.email,
                myLabelText: "Email",
                toHide: false,
                hintText: "Enter Your Email"),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: TextInput(
                controller: _passController,
                myIcon: Icons.lock,
                myLabelText: "Password",
                toHide: true,
                hintText: "Enter Your Password"),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5), // Change this radius to the desired value
                ),
              ),
              onPressed: () {
                AuthController.instance.login(_emailController.text, _passController.text);
              },
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  child: Text("Login")))
        ],
      ),
    );
  }
}
