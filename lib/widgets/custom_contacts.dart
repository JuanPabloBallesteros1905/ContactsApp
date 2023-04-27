import 'package:app_ontactos/clasedemuestra/contactos.dart';
import 'package:flutter/material.dart';

class CustomContacs extends StatelessWidget {
  const CustomContacs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<Contactos> contactos = [];

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          height: MediaQuery.of(context).size.height * 0.65,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                ...contactos
                    .map(
                      (e) => ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Card(
                          elevation: 0,
                          child: Column(
                            children: [
                              ListTile(
                                title: Text('${e.nombre} ${e.apellido} '),
                                subtitle: Text('${e.numero}'),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    ),
                                    Icon(
                                      Icons.phone,
                                      color: Colors.green,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList()
              ],
            ),
          ),
        ),
      ],
    );
  }
}

//* TODO: aqui se agregan los contactos y se muestran en la app
