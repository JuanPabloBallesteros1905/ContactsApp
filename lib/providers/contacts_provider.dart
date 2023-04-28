import 'package:app_ontactos/clasedemuestra/contactos.dart';
import 'package:flutter/material.dart';

class ContactsProvider extends ChangeNotifier {
  ContactsProvider() {
    addContact();
  }

  List<Contactos> newContact = [];

  void addContact([String? name, String? lt, String? number]) {
    newContact = [
      Contactos(name, number, lt),
    ];
    notifyListeners();
  }

  void deleteContact() {}
}

