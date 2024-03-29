import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:rick_morty/domain/entity/character_entity.dart';
import 'package:rick_morty/infra/model/character_model.dart';

import '../../infra/datasource/character_datasource.dart';

class CharacterDatasource extends ICharacterDatasource {
  final String baseUrl = "https://rickandmortyapi.com/api/";

  @override
  Future<List<CharacterEntity>> getCharacter({
    int? page,
    int? count,
    String? next,
    String? prev,
  }) async {
   // try {
   //   final response = await http.get(Uri.parse('${baseUrl}character'));

    //  if (response.statusCode == 200) {
    //    final jsonResult = json.decode(response.body);
     //   final charactersList = jsonResult['results'] as List<dynamic>;

       // List<CharacterEntity> characters = charactersList
        //    .map((characterJson) => CharacterModel.fromJson(characterJson))
         //   .toList();

       //return characters;
    //  } else {
    //    throw Exception('Erro ao carregar');
    //  }
    //} catch (e) {
   //   throw Exception('Erro ao carregar caracter $e');
    //}
  }
}
