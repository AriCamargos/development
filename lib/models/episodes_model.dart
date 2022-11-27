// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class EpisodesModel extends Equatable {
  final int? id;
  final String? name;
  final String? airDate;
  final String? episode;
  final List<String>? characters;
  final String? url;
  final String? created;

  const EpisodesModel({
    this.id,
    this.name,
    this.airDate,
    this.episode,
    required this.characters,
    this.url,
    this.created,
  });

  @override
  List<Object> get props {
    return [
      id!,
      name!,
      airDate!,
      episode!,
      characters!,
      url!,
      created!,
    ];
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'airDate': airDate,
      'episode': episode,
      'characters': characters,
      'url': url,
      'created': created,
    };
  }

  factory EpisodesModel.fromMap(Map<String, dynamic> map) {
    return EpisodesModel(
      id: map['id'] != null ? map['id'] as int : null,
      name: map['name'] != null ? map['name'] as String : null,
      airDate: map['airDate'] != null ? map['airDate'] as String : null,
      episode: map['episode'] != null ? map['episode'] as String : null,
      characters: map['episode'] != null ? List<String>.from((map['characters'] as List<String?>)): null,
      url: map['url'] != null ? map['url'] as String : null,
      created: map['created'] != null ? map['created'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory EpisodesModel.fromJson(String source) => EpisodesModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
