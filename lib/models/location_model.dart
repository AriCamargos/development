// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class LocationModel extends Equatable {
  final int? id;
  final String? name;
  final String? type;
  final String? dimension;
  final List<String>? residents;
  final String? url;
  final String? created;

  const LocationModel({
    required this.id,
    required this.type,
    required this.dimension,
    required this.residents,
    required this.created,
    required this.name,
    required this.url,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        type,
        dimension,
        created,
        url,
        residents,
      ];

  @override
  bool? get stringify => true;


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'type': type,
      'dimension': dimension,
      'residents': residents,
      'url': url,
      'created': created,
    };
  }

  factory LocationModel.fromMap(Map<String, dynamic> map) {
    return LocationModel(
      id: map['id'] != null ? map['id'] as int : null,
      name: map['name'] != null ? map['name'] as String : null,
      type: map['type'] != null ? map['type'] as String : null,
      dimension: map['dimension'] != null ? map['dimension'] as String : null,
      residents: map['residents'] != null ? List<String>.from((map['residents'] as List<String>)) : null,
      url: map['url'] != null ? map['url'] as String : null,
      created: map['created'] != null ? map['created'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory LocationModel.fromJson(String source) => LocationModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
