// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class InfoModel extends Equatable {
  final int? count;
  final int? pages;
  final String? next;
  final String? prev;

  const InfoModel({
    required this.count,
    required this.pages,
    this.next,
    this.prev,
  });

  @override
  List<Object> get props => [
        count!,
        pages!,
        next!,
        prev!,
      ];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'pages': pages,
      'next': next,
      'prev': prev,
    };
  }

  factory InfoModel.fromMap(Map<String, dynamic> map) {
    return InfoModel(
      count: map['count'] != null ? map['count'] as int : null,
      pages: map['pages'] != null ? map['pages'] as int : null,
      next: map['next'] != null ? map['next'] as String : null,
      prev: map['prev'] != null ? map['prev'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory InfoModel.fromJson(String source) =>
      InfoModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
