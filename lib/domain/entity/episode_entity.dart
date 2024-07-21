import 'package:equatable/equatable.dart';

class EpisodeEntity extends Equatable {
  final int id;
  final String name;
  final String airDate;
  final String episode;
  //final List<String> characters;
  final String urlEpisode;
  final String createdEpisode;

  const EpisodeEntity({
    required this.id,
    required this.name,
    required this.airDate,
    required this.episode,
    //required this.characters,
    required this.urlEpisode,
    required this.createdEpisode,
  });

  @override
  List<Object> get props {
    return [
      id,
      name,
      airDate,
      episode,
    //  characters,
      urlEpisode,
      createdEpisode,
    ];
  }
}
