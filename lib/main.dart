import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rick_morty/routes/modular.dart';

void main() {
  runApp(
    ModularApp(
      module: AppModule(),
      child: const HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'API Rick and Morty',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Colors.teal,
          secondary: Colors.greenAccent,
        ),
      ),
    );
  }
}
