import 'package:flutter/material.dart';
import 'package:app_ontactos/pages/pages.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selecI = 0;

  final List<Widget> _pages = [CustomHome(), ContactsScreen(), ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _pages[selecI],

      //BottomNavigation
      bottomNavigationBar: NavigationBar(
          selectedIndex: selecI,
          onDestinationSelected: (value) {
            setState(() {
              selecI = value;
            });
          },
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: ''),
            NavigationDestination(icon: Icon(Icons.book_outlined), label: ''),
            NavigationDestination(icon: Icon(Icons.person), label: ''),
          ]),
    );
  }
}
