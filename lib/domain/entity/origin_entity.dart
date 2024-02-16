
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

}
