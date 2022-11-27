import 'dart:convert';

import 'package:rick_morty/models/character_model.dart';
import 'package:http/http.dart' as http;

import 'i_repository_characters.dart';

class CharacterHttpRepository implements ICharacterRepository {
  @override
  Future<List<CharacterModel>> findAllCharacters() async {
    final response =
        await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));
    final List<dynamic> responseMap = jsonDecode(response.body);
    return responseMap.map<CharacterModel>((e) => CharacterModel.fromMap(e)).toList();
  }
}
