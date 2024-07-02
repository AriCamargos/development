import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rick_morty/external/datasources/character_datasource.dart';
import 'package:rick_morty/presenter/pages/character_page.dart';
import 'package:rick_morty/presenter/pages/character_state.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final datasource = CharacterDatasource();
  runApp(
    ChangeNotifierProvider(
      create: (context) => CharacterState(getCharacterDatasource: datasource),
      child: MaterialApp(
        title: 'API Rick and Morty',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: const ColorScheme.light(
            primary: Colors.teal,
            secondary: Colors.greenAccent,
          ),
        ),
        home: const CharacterPage(),
      ),
    ),
  );
}
