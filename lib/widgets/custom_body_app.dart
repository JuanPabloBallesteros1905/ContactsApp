import 'package:animate_do/animate_do.dart';
import 'package:app_ontactos/providers/contacts_provider.dart';
import 'package:app_ontactos/widgets/custom_contacts.dart';
import 'package:app_ontactos/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomBodyApp extends StatelessWidget {
  const CustomBodyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<ContactsProvider>(context);

    final listFavorites = contactProvider.favorites;
    const String text = 'Se mostraran tus contactos favoritos';

    return listFavorites.isEmpty
        ? const NoContact(text)
        : Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            height: MediaQuery.of(context).size.height * 0.65,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ...contactProvider.favorites
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
                                      children: const [
                                       
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
