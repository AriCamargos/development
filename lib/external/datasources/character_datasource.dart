import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:rick_morty/domain/entity/character_entity.dart';
import 'package:rick_morty/infra/mappers/character_mapper.dart';

import '../../infra/datasource/character_datasource.dart';

class CharacterDatasource extends ICharacterDatasource {
  final String baseUrl = "https://rickandmortyapi.com/api/";

  @override
  Future<List<CharacterEntity>> getCharacter({
    String? prev,
    String? next,
    required int page,
    required int count,
  }) async {
    try {
      final url = next ?? '$baseUrl/character?page=$page&count=$count';
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final jsonResult = json.decode(response.body);
        final charactersList = jsonResult['results'] as List<dynamic>;

        List<CharacterEntity> characters = charactersList
            .map((characterJson) => CharacterMapper.fromMap(characterJson))
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
