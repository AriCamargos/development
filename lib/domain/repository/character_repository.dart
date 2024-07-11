import 'package:rick_morty/domain/entity/character_entity.dart';

abstract class ICharacterRepository {
  Future<List<Character>> getCharacter({
    String? prev,
    String? next,
    required int page,
    required int count,
  });
}
