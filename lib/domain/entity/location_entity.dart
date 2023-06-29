// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class LocationEntity extends Equatable {
  const LocationEntity({
    required this.name,
    required this.url,
  });

  final String name;
  final String url;

  @override
  List<Object> get props => [
        name,
        url,
      ];
}
