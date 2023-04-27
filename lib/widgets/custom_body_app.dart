import 'package:flutter/material.dart';

class CustomBodyApp extends StatelessWidget {
  const CustomBodyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 0.5,
        width: double.infinity,
        child: const Text('Aqui se registraran tus llamadas'));
  }
}
