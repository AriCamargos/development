import 'package:rick_morty/domain/entity/character_entity.dart';

abstract class ICharacterDatasource {
  Future<CharacterEntity> getCharacter({
   required int page
  });
}
