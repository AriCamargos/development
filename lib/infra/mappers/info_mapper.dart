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

  static Map<String, dynamic> toMap(InfoEntity info) {
    return {
      'count': info.count,
      'pages': info.pages,
      'next': info.next,
      'prev': info.prev,
    };
  }
}