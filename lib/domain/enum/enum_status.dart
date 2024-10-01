import 'package:flutter/material.dart';

enum StatusEnum {
  alive(color: Color(0xFF388E3C), status: 'Alive'),
  dead(color: Color(0xFFE53935), status: 'Dead'),
  unknown(color: Color(0xFF4A148C), status: 'Unknown');

  final Color? color;
  final String? status;

  const StatusEnum({this.color, this.status});

  static getNameStatus(String status) {
    StatusEnum.values
        .firstWhere(
          (element) => status == status,
        )
        .status;
  }

  static Color? getColor(Color color) {
    StatusEnum.values
        .firstWhere(
          (element) => color == color,
        )
        .color;
    return color;
  }
}
