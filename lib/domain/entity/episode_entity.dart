import 'dart:convert';

import 'package:equatable/equatable.dart';

class EpisodeEntity extends Equatable {
  final String name;
  final String airDate;
  final String episode;
  final List<String> characters;
  final String urlEpisode;
  final String createdEpisode;

  const EpisodeEntity({
    required this.name,
    required this.airDate,
    required this.episode,
    required this.characters,
    required this.urlEpisode,
    required this.createdEpisode,
  });

  @override
  List<Object> get props {
    return [
      name,
      airDate,
      episode,
      characters,
      urlEpisode,
      createdEpisode,
    ];
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'air_date': airDate,
      'episode': episode,
      'characters': characters,
      'url': urlEpisode,
      'created': createdEpisode,
    };
  }

  String toJson() => jsonDecode(toMap() as String);

  factory EpisodeEntity.fromMap(Map<String, dynamic> map) {
    return EpisodeEntity(
      name: map['name'],
      airDate: map['air_date'],
      episode: map['episode'],
      characters: map['characters'],
      urlEpisode: map['url'],
      createdEpisode: map['created'],
    );
  }

  factory EpisodeEntity.toJson(String json) =>
      EpisodeEntity.fromMap(jsonDecode(json));
}
