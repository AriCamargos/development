
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rick_morty/views/http_page.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override 
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: const [
        // GetPage(
        //   name: '/details',
        //   page: () => const ,
        //   binding: DetailsPage(),
        // ),
      ],

      title: 'API Rick and Morty',
      home: const HttpPage(),
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
