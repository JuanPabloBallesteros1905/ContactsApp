
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app_ontactos/widgets/widgets.dart';
import 'package:app_ontactos/clasedemuestra/contactos.dart';
import 'package:app_ontactos/providers/contacts_provider.dart';

class CustomContacs extends StatelessWidget {
  const CustomContacs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final contactsProvider = Provider.of<ContactsProvider>(context);

    final listContact = contactsProvider.newContact;

    const String text = 'Aqui se mostraran tus contactos';

    return listContact.isEmpty
        ? const NoContact(text)
        : CustomCardsContacts(contactsProvider: contactsProvider);
  }
}

//* TODO: establecer condiciones a hora de llenar el formulario para evitar llenar los datos mal
//* TODO: arreglar el tema de la estrella que añade a favoritos y hacer que coincida con el stado de true y false

class NoContact extends StatelessWidget {
  final String textBody;

  const NoContact(this.textBody);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.65,
      width: double.infinity,
      child: Center(
        child: Text(textBody),
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
