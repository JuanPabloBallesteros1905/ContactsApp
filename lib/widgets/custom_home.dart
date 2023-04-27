import 'package:app_ontactos/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CustomHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(
                  'Hola de nuevo',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              CustomTextInput(
                icon: Icon(Icons.search, color: Colors.amber),
                hint: 'Busqueda',
              ),
            ],
          ),
        ),
        const CustomBodyApp()
      ],
    );
  }
}
