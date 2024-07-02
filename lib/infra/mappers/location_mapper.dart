import 'package:rick_morty/domain/entity/location_entity.dart';

class LocationMapper {
  static LocationEntity fromMap(Map<String, dynamic> json) {
    return LocationEntity(
      id: json['id'],
      name: json['name'],
      url: json['url'],
      created: json['created'],
      dimension: json['dimension'],
      residents: json['residents'] != null ? List<String>.from(json['residents']): null,
      type: json['type'],
    );
  }

}
