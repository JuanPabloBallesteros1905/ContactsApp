import 'package:flutter/material.dart';
import 'package:app_ontactos/themes/themes.dart';
import '../widgets/widgets.dart';

class ContactsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
              children: [
          const CustomContacs(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Themes.primary),
                  shape: const StadiumBorder(),
                  foregroundColor: Colors.black),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) => ScrollableButtomSheet());
        
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => ScrollableButtomSheet(),
                //     ));
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
