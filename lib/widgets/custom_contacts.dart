// ignore_for_file: sized_box_for_whitespace

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
                                        children: [
                                          IconButton(
                                            onPressed: () {
                                              contactsProvider.deleteContact(e);
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
                                          IconButton(onPressed: (){
                                            contactsProvider.saveContacts();
                                          }, icon: contactsProvider.press ? Icon(Icons.star, color: Colors.amber,) : Icon(Icons.star_border, color: Colors.amber ),)
                                           
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
