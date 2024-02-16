import 'package:rick_morty/domain/entity/location_entity.dart';

class LocationMapper {
  static LocationEntity fromMap(Map<String, dynamic> json) {
    return LocationEntity(
      id: json['id'],
      name: json['name'],
      url: json['url'],
      created: json['created'],
      dimension: json['dimension'],
      residents: List.from(json['residents']),
      type: json['type'],
    );
  }

  static Map<String, dynamic> toMap(LocationEntity location) {
    return {
      'name': location.name,
      'url': location.url,
      'type': location.type,
      'dimension': location.dimension,
      'residents': location.residents,
      'created': location.created,
      'id': location.id,
    };
  }
}
