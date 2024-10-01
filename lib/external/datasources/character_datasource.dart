import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:rick_morty/domain/entity/character_entity.dart';
import 'package:rick_morty/domain/entity/episode_entity.dart';
import 'package:rick_morty/infra/mappers/character_mapper.dart';
import 'package:rick_morty/infra/mappers/episode_mapper.dart';

import '../../infra/datasource/character_datasource.dart';

class CharacterDatasource extends ICharacterDatasource {
  final String baseUrl = "https://rickandmortyapi.com/api/";

  @override
  Future<List<Character>> getCharacter({
    String? prev,
    String? next,
    required int page,
    required int count,
  }) async {
    try {
      final url = next ?? '$baseUrl/character';
      final response = await http.get(
        Uri.parse(url).replace(
          queryParameters: {
            'page': page.toString(),
            'count': count.toString(),
            if (prev != null) 'prev': prev,
            if (next != null) 'next': next,
          },
        ),
      );

      if (response.statusCode == 200) {
        final jsonResult = json.decode(response.body);
        final charactersList = jsonResult['results'] as List<dynamic>;

        List<Character> characters = charactersList
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

  @override
  Future<List<EpisodeEntity>> getEpisode({
    String? prev,
    String? next,
    required num page,
    required num count,
  }) async {
    try {
      final url = next ?? '$baseUrl/episode?page=$page';
      final uri = Uri.parse(url).replace(
        queryParameters: {
          'page': page,
          'count': count,
          'prev': prev,
          'next': next,
        },
      );
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        final jsonResult = json.decode(response.body);
        final locationList = jsonResult['results'] as List<dynamic>;

        List<EpisodeEntity> location = locationList
            .map((locationJson) => EpisodeMapper.fromMap(locationJson))
            .toList();

        return location;
      } else {
        throw Exception('Erro ao carregar');
      }
    } catch (e) {
      throw Exception('Erro ao carregar caracter $e');
    }
  }
}
