import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  String text;

  TextFieldWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: TextField(
        decoration: InputDecoration(
          fillColor: Colors.white70,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          hintText: text,
          hintStyle: TextStyle(
            color: Colors.black38,
            fontSize: 20,
          ),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
