// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:rick_morty/domain/entity/character_entity.dart';

import '../repository/character_repository.dart';

class CharacterUsecase {
  final ICharacterRepository _characterRepository;

  CharacterUsecase({
    required ICharacterRepository characterRepository,
  }) : _characterRepository = characterRepository;

  Future<List<CharacterEntity>> call({
    String? prev,
    String? next,
    required int page,
    required int count,
  }) async {
    return await _characterRepository.getCharacter(
      page: page,
      count: count,
      next: next,
      prev: prev,
    );
  }
}
