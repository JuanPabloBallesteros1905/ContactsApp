import '../widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:app_ontactos/pages/pages.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selecI = 0;

  final List<Widget> _pages = [
    const CustomHome(),
    const ContactsScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: _pages[_selecI],

      //BottomNavigation
      bottomNavigationBar: NavigationBar(
          selectedIndex: _selecI,
          onDestinationSelected: (value) {
            setState(() {
              _selecI = value;
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
