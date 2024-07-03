import 'package:flutter/material.dart';
import 'package:rick_morty/domain/entity/character_entity.dart';
import 'package:rick_morty/domain/enum/enum_status.dart';

class CharacterWidget extends StatelessWidget {
  const CharacterWidget({
    super.key,
    required this.character,
  });

  final CharacterEntity? character;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.only(top: 5, left: 5, right: 5),
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(character!.image),
              backgroundColor: Colors.black,
            ),
            title: Text(character!.name),
            subtitle: Row(
              children: [
                Text(
                  character!.status,
                  style: TextStyle(
                    color: StatusEnum.getColor(character!.status),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
