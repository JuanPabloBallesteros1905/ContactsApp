import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app_ontactos/pages/home.dart';
import 'package:app_ontactos/themes/themes.dart';
import 'package:app_ontactos/providers/contacts_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const AppState());
}

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (context) => ContactsProvider(), lazy: false),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      routes: {'home': (context) => const HomeScreen()},
      theme: Themes.themes,
    );
  }
}


//* TODO: hacer que los inputs del fotmulario agarren de nuevo porque no están agarrando informacion 
