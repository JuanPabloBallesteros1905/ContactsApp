import 'package:flutter/material.dart';
import 'package:app_ontactos/clasedemuestra/contactos.dart';

class ContactsProvider extends ChangeNotifier {
  ContactsProvider() {
    addContact();
    deleteContact();
  }

  List<Contactos> newContact = [];

  addContact([String? name, String? lt, String? number]) {
    Contactos newContacts = Contactos(name, number, lt);
    newContact.add(newContacts);

    notifyListeners();
  }

  void deleteContact() {
    notifyListeners();
  }
}
