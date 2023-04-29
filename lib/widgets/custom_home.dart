// ignore_for_file: avoid_unnecessary_containers

import 'package:app_ontactos/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CustomHome extends StatelessWidget {
  const CustomHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
   
      child: ListView(
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
                      fontSize: 30,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                CustomTextInput(
                  icon: Icon(Icons.search, color: Colors.amber),
                  labels: 'Buscar',
               
                ),
              ],
            ),
          ),
          const CustomBodyApp()
        ],
      ),
    );
  }
}
