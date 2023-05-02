// ignore_for_file: sized_box_for_whitespace

import 'package:animate_do/animate_do.dart';
import 'package:app_ontactos/clasedemuestra/contactos.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app_ontactos/providers/contacts_provider.dart';

class CustomContacs extends StatelessWidget {
  const CustomContacs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final contactsProvider = Provider.of<ContactsProvider>(context);

    final listContact = contactsProvider.newContact;

    return listContact.isEmpty
        ? const NoContact()
        : Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: MediaQuery.of(context).size.height * 0.65,
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...contactsProvider.newContact
                          .map(
                            (e) => ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: BounceInDown(
                                duration: const Duration(milliseconds: 500),
                                child: Card(
                                  elevation: 0,
                                  child: Column(
                                    children: [
                                      ListTile(
                                        title:
                                            Text('${e.nombre} ${e.apellido} '),
                                        subtitle: Text('${e.numero}'),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                showMyDialog(context, e);
                                              },
                                              icon: const Icon(
                                                Icons.delete,
                                                color: Colors.red,
                                              ),
                                            ),
                                            const Icon(
                                              Icons.phone,
                                              color: Colors.green,
                                            ),
                                            IconButton(
                                              onPressed: () {
                                                contactsProvider.saveContacts();
                                              },
                                              icon: contactsProvider.press
                                                  ? const Icon(
                                                      Icons.star,
                                                      color: Colors.amber,
                                                    )
                                                  : const Icon(
                                                      Icons.star_border,
                                                      color: Colors.amber),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
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

//* TODO: establecer condiciones a hora de llenar el formulario para evitar llenar los datos mal
//* TODO: arreglar el tema de la estrella que añade a favoritos y hacer que coincida con el stado de true y false

class NoContact extends StatelessWidget {
  const NoContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.65,
      width: double.infinity,
      child: const Center(
        child: Text('Aqui se mostraran tus contactos'),
      ),
    );
  }
}

Future<void> showMyDialog(BuildContext context, Contactos e) async {
  final contactsProvider =
      Provider.of<ContactsProvider>(context, listen: false);

  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Eliminar contacto'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(
                  '¿Seguro que deseas eliminar a ${e.nombre} ${e.apellido} de tu lista de contactos?'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text(
              'Cancelar',
              style: TextStyle(color: Colors.green),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: const Text(
              'Eliminar',
              style: TextStyle(color: Colors.red),
            ),
            onPressed: () {
              contactsProvider.deleteContact(e);
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
