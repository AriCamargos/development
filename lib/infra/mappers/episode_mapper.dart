import 'package:rick_morty/domain/entity/episode_entity.dart';

class EpisodeMapper {
  static EpisodeEntity fromMap(Map<String, dynamic> map) {
    return EpisodeEntity(
      id: map['id'],
      name: map['name'],
      airDate: map['air_date'],
      episode: map['episode'],
      //characters: map['characters'],
      urlEpisode: map['url'],
      createdEpisode: map['created'],
    );
  }
}
