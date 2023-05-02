import 'package:flutter/material.dart';
import 'package:app_ontactos/clasedemuestra/contactos.dart';

class ContactsProvider extends ChangeNotifier {
  List<Contactos> newContact = [];

  List<Contactos> favorites = [];

  bool press = false;

  Future<void> addContact([String? n, String? lts, String? numb]) async {
    if (n!.isEmpty || lts!.isEmpty || numb!.isEmpty) {
    } else {
      Contactos newContacts = Contactos(n, numb, lts);
      newContact.add(newContacts);
    }

    notifyListeners();
  }

  Future<void> deleteContact(Contactos contactos) async {
    newContact.remove(contactos);

    notifyListeners();
  }

  //* TODO: Por implementar un metodo para guardar contactos favoritos

  void saveContacts(Contactos contactos) {
    press = !press;
    if (press == false) {}
    if (press == true) {
      favorites.add(contactos);
    }

    notifyListeners();
  }
}
