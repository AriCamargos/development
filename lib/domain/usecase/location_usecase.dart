import 'package:rick_morty/domain/entity/episode_entity.dart';
import 'package:rick_morty/domain/repository/character_repository.dart';

class EpisodeUsecase {
  final ICharacterRepository _characterRepository;

  EpisodeUsecase({
    required ICharacterRepository characterRepository,
  }) : _characterRepository = characterRepository;

  Future<List<EpisodeEntity>> call({
    String? prev,
    String? next,
    required int page,
    required int count,
  }) async {
    return await _characterRepository.getEpisode(
      page: page,
      count: count,
    );
  }
}
