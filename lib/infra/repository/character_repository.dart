import 'package:rick_morty/domain/entity/character_entity.dart';
import 'package:rick_morty/domain/repository/character_repository.dart';

import '../datasource/character_datasource.dart';

class CharacterRepository implements ICharacterRepository {
  final ICharacterDatasource _characterDatasource;

  CharacterRepository({
    required ICharacterDatasource characterDatasource,
  }) : _characterDatasource = characterDatasource;

  @override
  Future<List<Character>> getCharacter({
    String? prev,
    String? next,
    required int page,
    required int count,
  }) async {
    return await _characterDatasource.getCharacter(
      page: page,
      count: count,
      next: next,
      prev: prev,
    );
  }
}
