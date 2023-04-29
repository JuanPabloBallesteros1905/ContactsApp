import 'package:flutter/material.dart';

class CustomTextInput extends StatelessWidget {
  final String? hint;
  final Icon? icon;
  final String? labels;
  final TextEditingController? controller;

  const CustomTextInput({super.key, this.hint, this.icon, this.labels,  this.controller});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          label: Text('$labels'),
          suffixIcon: icon,
          // hintText: hint ?? 'aqui va un texto',
        ),
      ),
    );
  }
}
