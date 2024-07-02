import 'package:rick_morty/domain/entity/info_entity.dart';

class InfoMapper {
  static InfoEntity fromMap(Map<String, dynamic> json) {
    return InfoEntity(
      count: json['count'] as int,
      pages: json['pages'] as int,
      next: json['next'] as String,
      prev: json['prev'] as String,
    );
  }

}