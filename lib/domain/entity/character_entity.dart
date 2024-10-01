import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'package:rick_morty/domain/entity/location_entity.dart';

import 'origin_entity.dart';

class Character extends Equatable {
  const Character({
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
  final String status;
  final String species;
  final String type;
  final String gender;
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

  Color? getColorStatus(String specie) {
    if (specie == 'Human') {
      return Colors.green;
    }
    if (specie == 'unknown') {
      return Colors.black;
    }
    if (specie == 'Alien') {
      return Colors.purple[200];
    }
    if (specie == 'Humanoid') {
      return Colors.cyan;
    }
    return null;
  }
}
