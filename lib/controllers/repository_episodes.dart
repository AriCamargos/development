import 'dart:convert';

import 'package:rick_morty/controllers/i_repository_episodes.dart';
import 'package:rick_morty/models/episodes_model.dart';
import 'package:http/http.dart' as http;

class EpisodesHttpRepository implements IEpisodesRepository{
  @override
  Future<List<EpisodesModel>> findAllEpisodes() async {
    final response =
        await http.get(Uri.parse('https://rickandmortyapi.com/api/episode'));
    final List<dynamic> responseMap = jsonDecode(response.body);
    return responseMap.map<EpisodesModel>((e) => EpisodesModel.fromMap(e)).toList();
  }

}