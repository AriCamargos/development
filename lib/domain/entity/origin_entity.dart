import 'dart:convert';

import 'package:equatable/equatable.dart';

class OriginEntity extends Equatable {
  final String name;
  final String url;
  const OriginEntity({
    required this.name,
    required this.url,
  });

  @override
  List<Object> get props => [
        name,
        url,
      ];

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'url': url,
    };
  }

  String toJson() => jsonDecode(toMap() as String);

  factory OriginEntity.fromMap(Map<String, dynamic> map) {
    return OriginEntity(
      name: map['name'],
      url: map['url'],
    );
  }

  factory OriginEntity.fromJson(String json) =>
      OriginEntity.fromMap(jsonDecode(json));
}
