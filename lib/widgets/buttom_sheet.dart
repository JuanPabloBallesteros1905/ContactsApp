import 'package:app_ontactos/providers/contacts_provider.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:app_ontactos/widgets/widgets.dart';
import 'package:provider/provider.dart';

class ScrollableButtomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BounceInDown(
        child: DraggableScrollableSheet(
            initialChildSize: 0.85,
            minChildSize: 0.85,
            maxChildSize: 1,
            builder: (context, scrollController) {
              return Container(
                  width: double.infinity,
                  child: _ListForm(controller: scrollController));
            }),
      ),
    );
  }
}

class _ListForm extends StatefulWidget {
  final ScrollController controller;
  _ListForm({required this.controller});

  @override
  State<_ListForm> createState() => _ListFormState();
}

class _ListFormState extends State<_ListForm> {
  final na = TextEditingController();

  final lt = TextEditingController();

  final number = TextEditingController();

  String n = '';

  String lts = '';

  String numb = '';

  @override
  Widget build(BuildContext context) {

    final contactsProvider = Provider.of<ContactsProvider>(context);

    return ListView(
      controller: widget.controller,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              CustomTextInput(
                controller: na,
                labels: 'Nombre',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextInput(
                controller: lt,
                labels: 'Apellido',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextInput(
                controller: number,
                labels: 'Numero',
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(90),
          child: ElevatedButton(
            onPressed: () {
              n = na.text;
              lts = lt.text;
              numb = number.text;
              contactsProvider.addContact(n, lts, numb);
  

              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(),
            child: const Text('Agregar'),
          ),
        )
      ],
    );
  }
}
