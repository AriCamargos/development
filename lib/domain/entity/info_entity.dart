// ignore_for_file: must_be_immutable

import 'dart:convert';

import 'package:equatable/equatable.dart';

class InfoEntity extends Equatable {
  final int count;
  final int pages;
  final String? next;
  final String? prev;

  const InfoEntity({
    required this.count,
    required this.pages,
    this.next,
    this.prev,
  });

  @override
  List<Object> get props => [
        count,
        pages,
        next!,
        prev!,
      ];

  Map<String, dynamic> toMap() {
    return {
      'count': count,
      'pages': pages,
      'next': next,
      'prev': prev,
    };
  }

  String toJson(String json) => jsonDecode(toMap() as String);

  factory InfoEntity.fromMap(Map<String, dynamic> map) {
    return InfoEntity(
      count: map['count'],
      pages: map['pages'],
      next: map['next'] ?? '',
      prev: map['prev'] ?? '',
    );
  }

  factory InfoEntity.fromJson(json) => InfoEntity.fromMap(jsonDecode(json));
}
