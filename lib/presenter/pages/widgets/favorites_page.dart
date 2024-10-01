import 'package:flutter/material.dart';
import 'package:rick_morty/domain/entity/character_entity.dart';

class FavoritePage extends StatefulWidget {
  final List<Character> listCharacter;

  const FavoritePage({
    super.key,
    required this.listCharacter,
  });

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: const Text('Favoritos'),
      ),
      body: ListView.builder(
        itemCount: widget.listCharacter.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(widget.listCharacter[index].name),
            leading: CircleAvatar(
              child: Image.network(widget.listCharacter[index].image),
            ),
          );
        },
      ),
    );
  }
}
