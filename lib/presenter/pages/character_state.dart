import 'package:flutter/material.dart';
import 'package:rick_morty/domain/entity/character_entity.dart';

import '../../infra/datasource/character_datasource.dart';

class CharacterState extends ChangeNotifier {
  final ICharacterDatasource _getCharacterDatasource;

  CharacterState({
    required ICharacterDatasource getCharacterDatasource,
  }) : _getCharacterDatasource = getCharacterDatasource;

  Future<List<CharacterEntity>> getData(
     int page,
     int count,
     String next,
     String prev,
  ) async {
    return await _getCharacterDatasource.getCharacter(
      page: page,
      count: count,
      next: next,
      prev: prev,
    );
  }
}
