import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:rick_morty/domain/entity/character_entity.dart';
import 'package:rick_morty/infra/model/character_model.dart';

class RickMortyDatasource {
  Future<CharacterEntity> getCharacterUrl() async {
    final url = Uri.parse("https://rickandmortyapi.com/api/character");
    final response = await http.get(url);

    if (response.statusCode == 200) {
      return CharacterModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Erro ao carregar');
    }
    
  }
  //return CharacterModel.fromJson();
}
