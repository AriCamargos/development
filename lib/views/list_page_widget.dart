import 'package:flutter/material.dart';

class ListPageWidget extends StatelessWidget {
  const ListPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('API Rick and Morty'),
        centerTitle: true,
      ),
    );
  }
}
