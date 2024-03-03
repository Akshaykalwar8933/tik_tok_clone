import 'package:flutter/material.dart';
import 'package:tak_tok/constant.dart';


class TextInput extends StatelessWidget {
  final TextEditingController controller ;
  final IconData myIcon;
  final String myLabelText;
  final bool toHide;
  final String hintText;

  const TextInput(
      {super.key,
      required this.controller,
      required this.myIcon,
      required this.myLabelText,
      required this.toHide,
      required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: toHide,
      decoration: InputDecoration(
        hintText: hintText,
        icon: Icon(myIcon),
        labelText: myLabelText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: borderColor,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: borderColor,
          ),
        ),
      ),
    );
  }
}
