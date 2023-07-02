import 'package:rick_morty/domain/entity/info_entity.dart';

// ignore: must_be_immutable
class InfoModel extends InfoEntity {
  InfoModel({
    required int count,
    required int pages,
    required String next,
  }) : super(
          count: count,
          next: next,
          pages: pages,
        );

  factory InfoModel.fromJson(Map<String, dynamic> json) {
    return InfoModel(
      count: json['count'] as int,
      pages: json['pages'] as int,
      next: json['next'] as String,
    );
  }
}
