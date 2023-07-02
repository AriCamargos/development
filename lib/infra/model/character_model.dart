import 'package:rick_morty/domain/entity/character_entity.dart';
import 'package:rick_morty/domain/entity/location_entity.dart';
import 'package:rick_morty/infra/model/location_model.dart';

import '../../domain/enum/enum_values.dart';

class CharacterModel extends CharacterEntity {
  const CharacterModel({
    required int id,
    required String name,
    required Status status,
    required Species species,
    required String type,
    required Gender gender,
    required LocationEntity origin,
    required LocationEntity location,
    required String image,
    required List<String> episode,
    required String url,
    required DateTime created,
  }) : super(
          id: id,
          name: name,
          status: status,
          type: type,
          gender: gender,
          origin: origin,
          location: location,
          image: image,
          episode: episode,
          url: url,
          created: created,
          species: species,
        );

  factory CharacterModel.fromJson(Map<String, dynamic> json) {
    return CharacterModel(
      id: json["id"],
      name: json["name"],
      status: statusValues.map[json["status"]]!,
      species: speciesValues.map[json["species"]]!,
      type: json["type"],
      gender: genderValues.map[json["gender"]]!,
      origin: LocationModel.fromJson(json["origin"]),
      location: LocationModel.fromJson(json["location"]),
      image: json["image"],
      episode: List<String>.from(json["episode"].map((x) => x)),
      url: json["url"],
      created: DateTime.parse(json["created"]),
    );
  }
}
