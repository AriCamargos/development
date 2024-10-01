import 'package:flutter/material.dart';
import 'package:rick_morty/domain/entity/character_entity.dart';
import 'package:rick_morty/domain/entity/episode_entity.dart';

class CharacterWidget extends StatefulWidget {
  const CharacterWidget({
    super.key,
    required this.character,
    required this.episode,
  });

  final Character? character;
  final EpisodeEntity? episode;

  @override
  State<CharacterWidget> createState() => _CharacterWidgetState();
}

class _CharacterWidgetState extends State<CharacterWidget> {
  bool _favorite = false;
  @override
  Widget build(BuildContext context) {
    //final episodeCount = widget.character!.episode.length;

    return Card(
      color: const Color(0XFF3c3e44),
      elevation: 5,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        height: 150,
                        width: 150,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                          ),
                          child: Image.network(widget.character!.image),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _favorite = !_favorite;
                            
                          });
                        },
                        icon: Icon(
                          _favorite
                              ? Icons.favorite
                              : Icons.favorite_border_outlined,
                          color: _favorite ? Colors.red : null,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.character!.name,
                        softWrap: true,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        '/details',
                        arguments: {
                          'episode': widget.episode,
                          'details': widget.character,
                        },
                      );
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.grey,
                      size: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
