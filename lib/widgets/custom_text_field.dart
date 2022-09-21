import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? text;
  final bool? value;
  final TextInputType? input;

  const CustomTextField({this.text, this.value=false, this.input});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: TextField(
        obscureText: value!,
        keyboardType: input,
        decoration: InputDecoration(
            labelText: text,
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    );
  }
}
