import 'package:flutter/material.dart';

class CustomTextInput extends StatelessWidget {
  final String? hint;
  final Icon? icon;

  const CustomTextInput({this.hint, this.icon});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: TextField(
        decoration: InputDecoration(
            suffixIcon: icon, hintText: hint ?? 'aqui va un texto'),
      ),
    );
  }
}
