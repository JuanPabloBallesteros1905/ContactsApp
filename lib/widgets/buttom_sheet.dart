import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:app_ontactos/widgets/widgets.dart';

class ScrollableButtomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BounceInDown(
        child: DraggableScrollableSheet(
            snap: false,
            initialChildSize: 0.9,
            minChildSize: 0.1,
            maxChildSize: 1,
            builder: (context, scrollController) {
              return Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  child: _ListForm(controller: scrollController));
            }),
      ),
    );
  }
}

class _ListForm extends StatelessWidget {
  final ScrollController controller;

  _ListForm({required this.controller});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomTextInput(),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomTextInput(),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomTextInput(),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomTextInput(),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomTextInput(),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomTextInput(),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomTextInput(),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomTextInput(),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomTextInput(),
        ),
      ],
    );
  }
}
