import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:app_ontactos/widgets/widgets.dart';

import '../providers/contacts_provider.dart';

class CustomCardsContacts extends StatelessWidget {
  const CustomCardsContacts({super.key, required this.contactsProvider});

  final ContactsProvider contactsProvider;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                                      contactsProvider.saveContacts(e);
                                    },
                                    icon: contactsProvider.press
                                        ? const Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          )
                                        : const Icon(Icons.star_border,
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
    );
  }
}
