import 'package:rick_morty/domain/entity/character_entity.dart';

abstract class ICharacterRepository {
  Future<List<CharacterEntity>> getCharacter({
    required int page,
    required int count,
    required String next,
    required String prev,
  });
}
