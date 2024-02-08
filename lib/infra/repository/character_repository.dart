// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:rick_morty/domain/entity/character_entity.dart';
import 'package:rick_morty/domain/repository/character_repository.dart';

import '../datasource/character_datasource.dart';

class CharacterRepository implements ICharacterRepository {
  final ICharacterDatasource _characterDatasource;

  CharacterRepository({
    required ICharacterDatasource characterDatasource,
  }) : _characterDatasource = characterDatasource;

  @override
  Future<List<CharacterEntity>> getCharacter({
    required int page,
    required int count,
    required String next,
    required String prev,
  }) async {
    return await _characterDatasource.getCharacter(
      page: page,
      count: count,
      next: next,
      prev: prev,
    );
  }
}
