import 'package:equatable/equatable.dart';

class LocationEntity extends Equatable {
  const LocationEntity({
    required this.id,
    required this.name,
    required this.url,
    required this.type,
    required this.dimension,
    required this.residents,
    required this.created,
  });

  final int id;
  final String name;
  final String url;
  final String type;
  final String dimension;
  final List<String> residents;
  final String created;

  @override
  List<Object> get props {
    return [
      id,
      name,
      url,
      type,
      dimension,
      residents,
      created,
    ];
  }
}
