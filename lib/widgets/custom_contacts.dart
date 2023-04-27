import 'package:app_ontactos/clasedemuestra/contactos.dart';
import 'package:flutter/material.dart';

class CustomContacs extends StatelessWidget {
  const CustomContacs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<Contactos> _contactos = [
      Contactos('Juan', '3022704764', 'Ballesteros'),
      Contactos('Nancy', '3022704764', 'Ballesteros'),
      Contactos('Jefferson', '3022704764', 'Ballesteros'),
      Contactos('Carmen', '3022704764', 'Ballesteros'),
      Contactos('Juan', '3022704764', 'Ballesteros'),
      Contactos('Juan', '3022704764', 'Ballesteros'),
      Contactos('Juan', '3022704764', 'Ballesteros'),
      Contactos('Juan', '3022704764', 'Ballesteros'),
      Contactos('Juan', '3022704764', 'Ballesteros'),
      Contactos('Juan', '3022704764', 'Ballesteros'),
      Contactos('Juan', '3022704764', 'Ballesteros'),
      Contactos('Juan', '3022704764', 'Ballesteros'),
      Contactos('Juan', '3022704764', 'Ballesteros'),
      Contactos('Juan', '3022704764', 'Ballesteros'),
      Contactos('Juan', '3022704764', 'Ballesteros'),
      Contactos('Juan', '3022704764', 'Ballesteros'),
      Contactos('Juan', '3022704764', 'Ballesteros'),
    ];

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          height: MediaQuery.of(context).size.height * 0.7,
          width: double.infinity,
          child: SingleChildScrollView(
              child: Column(children: [
            ..._contactos
                .map((e) => ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Card(
                        child: Column(
                          children: [
                            ListTile(
                              title: Text('${e.nombre} ${e.apellido} '),
                              subtitle: Text('${e.numero}'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: const [
                                  Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                    Icon(
                                    Icons.phone,
                                    color: Colors.green,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                ))
                .toList()
          ])),
        ),
      ],
    );
  }
}

//* TODO: aqui se agregan los contactos y se muestran en la app
