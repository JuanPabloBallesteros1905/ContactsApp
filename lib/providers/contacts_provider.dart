import 'package:flutter/material.dart';
import 'package:app_ontactos/clasedemuestra/contactos.dart';

class ContactsProvider extends ChangeNotifier {
  List<Contactos> newContact = [];

  List<Contactos> favorites = [];

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
    favorites.remove(contactos);

    notifyListeners();
  }
 
  //* TODO: Arreglar el mensaje de guardado exitoso para que no se muestre con solo dar clic al boton de agregar contacto
  //* TODO: Programar mas validaciones
  //* TODO: Hacer que se muestre mensajes al guardar un contacto y tambien cuando el contacto ya está guardato 
  

  saveContacts(Contactos contactos) {
    if (favorites.contains(contactos)) {
    } else {
      favorites.add(contactos);
    }

    notifyListeners();
  }
}
