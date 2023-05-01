import 'package:flutter/material.dart';
import 'package:app_ontactos/clasedemuestra/contactos.dart';

class ContactsProvider extends ChangeNotifier {
  List<Contactos> newContact = [];

  bool press = false;

  addContact([String? n, String? lts, String? numb]) {
    if (n!.isEmpty || lts!.isEmpty || numb!.isEmpty) {
    } else {
      Contactos newContacts = Contactos(n, numb, lts);
      newContact.add(newContacts);
    }

    notifyListeners();
  }

  void deleteContact(Contactos contactos) {
    newContact.remove(contactos);

    notifyListeners();
  }

  void saveContacts() {
    press = !press;

    notifyListeners();
  }
}
