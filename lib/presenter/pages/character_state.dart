import 'package:flutter/material.dart';
import 'package:rick_morty/domain/entity/character_entity.dart';

import '../../infra/datasource/character_datasource.dart';

class CharacterState extends ChangeNotifier {
  final ICharacterDatasource _getCharacterDatasource;
  final CharacterEntity characterEntity;

  CharacterState(
    this.characterEntity, {
    required ICharacterDatasource getCharacterDatasource,
  }) : _getCharacterDatasource = getCharacterDatasource;

  final _characters = <CharacterEntity?>[];
  List<CharacterEntity?> get character => _characters;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _error;
  String? get error => _error;

  String? _nextPageUrl;
  bool _hasMorePages = true;

  Future<void> loadingCharacter({
    String? prev,
    String? next,
    required int page,
    required int count,
  }) async {
    _isLoading = true;
    notifyListeners();

    try {
      final newCharacters = await _getCharacterDatasource.getCharacter(
        page: page,
        count: count,
        next: _nextPageUrl,
      );

      _characters.addAll(newCharacters);
      _nextPageUrl = newCharacters.isNotEmpty ? next : null;
      _hasMorePages = _nextPageUrl != null;
      _error = null;
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
