import 'package:app_ontactos/clasedemuestra/contactos.dart';
import 'package:flutter/material.dart';

class ContactsProvider extends ChangeNotifier {
  ContactsProvider() {
    print('INICIALIZADO');
  }

  List<Contactos> contactos = [];

  void addContact(String name, String lt, String number) {


    

  }

  void deleteContact(){}
}
