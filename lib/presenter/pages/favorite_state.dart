import 'package:flutter/material.dart';
import 'package:rick_morty/domain/entity/character_entity.dart';
import 'package:rick_morty/external/datasources/character_datasource.dart';

class FavoriteState extends ChangeNotifier {
  final CharacterDatasource getCharacterDatasource;
  final int page;
  final int count;
  List<Character> _character = [];
  List<Character> get character => _character;

  FavoriteState({
    required this.getCharacterDatasource,
    required this.count,
    required this.page,
  }) {
    fetchCharacters();
  }

  Future<void> fetchCharacters() async {
    _character =
        await getCharacterDatasource.getCharacter(page: page, count: count);
    notifyListeners();
  }

}
