// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tak_tok/controller/auth_controller.dart';
import 'package:tak_tok/views/widgets/glitch.dart';
import 'package:tak_tok/views/widgets/text_input.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _setpassController = TextEditingController();
  final TextEditingController _confirmpassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            GlithEffect(
                child: Text(
                  "Welcome To TikTok",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
                )),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: (){
                AuthController.instance.pickImage();
              },
              child: Stack(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 60,
                    backgroundImage: NetworkImage(
                      'https://cpng.pikpng.com/pngl/s/53-531718_free-high-quality-person-icon-icon-clipart.png',
                    ),
                  ),
                  Positioned(
                    bottom: 0,right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                        child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.edit,size: 20,color: Colors.black,),
                      )),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: TextInput(
                  controller: _usernameController,
                  myIcon: Icons.person,
                  myLabelText: "Username",
                  toHide: false,
                  hintText: "Enter Your Name"),
            ),
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
                  controller: _setpassController,
                  myIcon: Icons.lock,
                  myLabelText: " Set Password",
                  toHide: true,
                  hintText: "Set Your Password"),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: TextInput(
                  controller: _confirmpassController,
                  myIcon: Icons.lock,
                  myLabelText: " Confirm Password",
                  toHide: true,
                  hintText: "Confirm Your Password"),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {
                  AuthController.instance.signup(_usernameController.text, _emailController.text, _confirmpassController.text, AuthController.instance.proimg);
                },
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                    child: Text("Sign Up")))
          ],
        ),
      ),
    );
  }
}
