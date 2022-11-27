// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:rick_morty/models/episodes_model.dart';

import 'location_model.dart';
class CharacterModel extends Equatable {
  String? id;
  String? name;
  String? status;
  String? species;
  String? type;
  String? gender;
  String? image;
  String? url;
  List<EpisodesModel>? episodes;
  List<LocationModel>? location;

  CharacterModel({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.image,
    required this.url,
    required this.episodes,
    required this.location,
  });

  @override
  List<Object> get props {
    return [
      id!,
      name!,
      status!,
      species!,
      type!,
      gender!,
      image!,
      url!,
      episodes!,
      location!,
    ];
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'status': status,
      'species': species,
      'type': type,
      'gender': gender,
      'image': image,
      'url': url,
      'episodes': episodes?.map((x) => x.toMap()).toList(),
      'location': location?.map((x) => x.toMap()).toList(),
    };
  }

  factory CharacterModel.fromMap(Map<String, dynamic> map) {
    return CharacterModel(
      id: map['id'] != null ? map['id'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      status: map['status'] != null ? map['status'] as String : null,
      species: map['species'] != null ? map['species'] as String : null,
      type: map['type'] != null ? map['type'] as String : null,
      gender: map['gender'] != null ? map['gender'] as String : null,
      image: map['image'] != null ? map['image'] as String : null,
      url: map['url'] != null ? map['url'] as String : null,
      episodes: map['episodes'] != null ? List<EpisodesModel>.from((map['episodes'] as List<int>).map<EpisodesModel?>((x) => EpisodesModel.fromMap(x as Map<String,dynamic>),),) : null,
      location: map['location'] != null ? List<LocationModel>.from((map['location'] as List<int>).map<LocationModel?>((x) => LocationModel.fromMap(x as Map<String,dynamic>),),) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CharacterModel.fromJson(String source) =>
      CharacterModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
