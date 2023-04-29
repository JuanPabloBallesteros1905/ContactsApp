import 'package:flutter/material.dart';
import '../widgets/widgets.dart';
import 'package:app_ontactos/themes/themes.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 15),
          const CustomContacs(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Themes.primary),
                  shape: const StadiumBorder(),
                  foregroundColor: Colors.black),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) => const ScrollableButtomSheet());
              },
              child: const Text(
                'Agregar nuevo contacto',
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
