import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:rick_morty/domain/entity/character_entity.dart';
import 'package:rick_morty/infra/model/character_model.dart';

class RickMortyDatasource {
  final String baseUrl = "https://rickandmortyapi.com/api/";

  Future<List<CharacterEntity>> getCharacterUrl() async {
    try {
      final response = await http.get(Uri.parse('${baseUrl}character'));

      if (response.statusCode == 200) {
        final jsonResult = json.decode(response.body);
        final charactersList = jsonResult['results'] as List<dynamic>;

        List<CharacterEntity> characters = charactersList
            .map((characterJson) => CharacterModel.fromJson(characterJson))
            .toList();

        return characters;
      } else {
        throw Exception('Erro ao carregar');
      }
    } catch (e) {
      throw Exception('Erro ao carregar caracter $e');
    }
  }
}

