import 'package:rick_morty/domain/entity/character_entity.dart';

abstract class ICharacterDatasource {
  Future<List<CharacterEntity>> getCharacter({
    String? prev,
    String? next,
    required int page,
    required int count,
  });
}
