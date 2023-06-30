import 'package:rick_morty/domain/entity/character_entity.dart';

abstract class ICharacterRepository {
  Future<List<CharacterEntity>> getCharacter({required int page});
}
