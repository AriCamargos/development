import 'package:flutter/material.dart';

class TextRowData extends StatelessWidget {
  final String title;
  final String? subtitle;
  const TextRowData({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$title: ',
          style: const TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w300,
          ),
        ),
        Text(
          subtitle ?? '-',
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
          ) 
        )
      ],
    );
  }
}
