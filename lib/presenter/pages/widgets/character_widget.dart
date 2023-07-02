import 'package:flutter/material.dart';
import 'package:rick_morty/domain/entity/character_entity.dart';

class CharacterWidget extends StatefulWidget {
  final CharacterEntity character;
  const CharacterWidget({super.key, required this.character});

  @override
  State<CharacterWidget> createState() => _CharacterWidgetState();
}

class _CharacterWidgetState extends State<CharacterWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        CircleAvatar(),
      ],
    );
  }
}
