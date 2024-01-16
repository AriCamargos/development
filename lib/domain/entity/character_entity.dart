// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:rick_morty/domain/entity/location_entity.dart';

import '../enum/enum_values.dart';
import 'origin_entity.dart';

class CharacterEntity extends Equatable {
  const CharacterEntity({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.origin,
    required this.location,
    required this.image,
    required this.episode,
    required this.url,
    required this.created,
  });

  final int id;
  final String name;
  final StatusEnum status;
  final SpeciesEnum species;
  final String type;
  final GenderEnum gender;
  final OriginEntity origin;
  final LocationEntity location;
  final String image;
  final List<String> episode;
  final String url;
  final String created;

  @override
  List<Object> get props {
    return [
      id,
      name,
      status,
      species,
      type,
      gender,
      origin,
      location,
      image,
      episode,
      url,
      created,
    ];
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'status': status.name,
      'species': species.name,
      'type': type,
      'gender': gender.name,
      'origin': origin.toMap(),
      'location': location.toMap(),
      'image': image,
      'episode': episode,
      'url': url,
      'created': created,
    };
  }

  String toJson() => jsonDecode(toMap() as String);

  factory CharacterEntity.fromMap(Map<String, dynamic> map) {
    return CharacterEntity(
      id: map['id'],
      name: map['name'],
      status: map['status'],
      species: map['species'],
      type: map['type'],
      gender: map['gender'],
      origin: OriginEntity.fromMap(map['origin']),
      location: LocationEntity.fromMap(map['location']),
      image: map['image'],
      episode: map['episode'],
      url: map['url'],
      created: map['created'],
    );
  }

  factory CharacterEntity.fromJson(String json) =>
      CharacterEntity.fromMap(jsonDecode(json));
}
