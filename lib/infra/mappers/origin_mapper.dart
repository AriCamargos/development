import 'dart:convert';

import 'package:rick_morty/domain/entity/origin_entity.dart';

class OriginMapper {
  static Map<String, dynamic> toMap(OriginEntity origin) {
    return {
      'name': origin.name,
      'url': origin.url,
    };
  }

  String toJson() => jsonDecode(toMap as String);

  static OriginEntity fromMap(Map<String, dynamic> map) {
    return OriginEntity(
      name: map['name'],
      url: map['url'],
    );
  }
}
