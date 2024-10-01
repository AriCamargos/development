import 'package:flutter/material.dart';
import 'package:rick_morty/domain/entity/character_entity.dart';
import 'package:rick_morty/domain/entity/episode_entity.dart';
import 'package:rick_morty/external/datasources/character_datasource.dart';

class CharacterState extends ChangeNotifier {
  final CharacterDatasource getCharacterDatasource;

  CharacterState({
    required this.getCharacterDatasource,
  });

  final _characters = <Character?>[];
  List<Character?> get character => _characters;

  final _episode = <EpisodeEntity?>[];
  List<EpisodeEntity?> get episode => _episode;



  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _error;
  String? get error => _error;

  String? _nextPageUrl;
  bool isFavorite = false;

  void favorite(){
    isFavorite = false;
  }


  Future<void> loadingCharacter({
    String? prev,
    String? next,
    required int page,
    required int count,
  }) async {
    _isLoading = true;
    notifyListeners();

    try {
      final newCharacters = await getCharacterDatasource.getCharacter(
        page: page,
        count: count,
        next: _nextPageUrl,
      );

      _characters.addAll(newCharacters);
      _nextPageUrl = newCharacters.isNotEmpty ? next : null;
      _error = null;
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

    Future<void> loadingEpisode({
    String? prev,
    String? next,
    required int page,
    required int count,
  }) async {
    _isLoading = true;
    notifyListeners();

    try {
      final newLocation = await getCharacterDatasource.getEpisode(
        page: page,
        count: count,
        next: _nextPageUrl,
      );

      _episode.addAll(newLocation);
      _nextPageUrl = newLocation.isNotEmpty ? next : null;
      _error = null;
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
