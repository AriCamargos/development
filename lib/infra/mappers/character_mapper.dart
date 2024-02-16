import 'dart:convert';

import 'package:rick_morty/domain/entity/character_entity.dart';

import '../../domain/enum/enum_values.dart';
import 'location_mapper.dart';
import 'origin_mapper.dart';

class CharacterMapper {
  static CharacterEntity fromMap(Map<String, dynamic> json) {
    return CharacterEntity(
      id: json["id"],
      name: json["name"],
      status: statusValues.map[json["status"]]!,
      species: speciesValues.map[json["species"]]!,
      type: json["type"],
      gender: genderValues.map[json["gender"]]!,
      origin: OriginMapper.fromMap(json["origin"]),
      location: LocationMapper.fromMap(json['location']),
      image: json["image"],
      episode: List<String>.from(json["episode"].map((x) => x)),
      url: json["url"],
      created: json["created"],
    );
  }

  Map<String, dynamic> toMap(CharacterEntity character) {
    return {
      'id': character.id,
      'name': character.name,
      'status': character.status.name,
      'species': character.species.name,
      'type': character.type,
      'gender': character.gender.name,
      'origin': character.origin,
      'location': character.location,
      'image': character.image,
      'episode': character.episode,
      'url': character.url,
      'created': character.created,
    };
  }
  String toJson() => jsonDecode(toMap as String);
}
