import 'dart:convert';

import 'package:equatable/equatable.dart';

class LocationEntity extends Equatable {
  const LocationEntity({
    required this.name,
    required this.url,
    required this.type,
    required this.dimension,
    required this.residents,
    required this.created,
  });

  final String name;
  final String url;
  final String type;
  final String dimension;
  final List<String> residents;
  final String created;

  @override
  List<Object> get props {
    return [
      name,
      url,
      type,
      dimension,
      residents,
      created,
    ];
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'url': url,
      'type': type,
      'dimension': dimension,
      'residents': residents,
      'created': created,
    };
  }

  String toJson() => jsonDecode(toMap() as String);

  factory LocationEntity.fromMap(Map<String, dynamic> map) {
    return LocationEntity(
      name: map['name'] ?? '',
      url: map['url'] ?? '',
      created: map['created'] ?? '',
      dimension: map['dimension'] ?? '',
      residents: List.from(map['residents']),
      type: map['type'],
    );
  }

  factory LocationEntity.fromJson(String json) =>
      LocationEntity.fromMap(jsonDecode(json));
}
