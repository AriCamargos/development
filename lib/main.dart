import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rick_morty/views/http_page.dart';

import 'controllers/http/http_bindings.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: '/',
          page: () => const HttpPage(),
          binding: HttpBindings(),
        ),
      ],
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
