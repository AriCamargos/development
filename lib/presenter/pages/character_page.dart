import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rick_morty/presenter/pages/character_state.dart';

class CharacterPage extends StatefulWidget {
  const CharacterPage({super.key});

  @override
  State<CharacterPage> createState() => _CharacterPageState();
}

class _CharacterPageState extends State<CharacterPage> {
  /* Future<List> getCharacterUrl() async {
    final url = Uri.parse("https://rickandmortyapi.com/api/character");
    final response = await http.get(url);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Erro ao carregar');''
    }
  }*/

  /*late Future<CharacterEntity> futureCharacter;

  @override
  void initState(){
    super.initState();
    //futureCharacter = getCharacterUrl();
 }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Api Rick e Morty'),
      ),
      body: FutureBuilder<List>(
        future: getCharacter(),
        // futureCharacter,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text('${snapshot.error}'),
            );
          }
          if (snapshot.hasData) {
            return CharacterPage();
            /*  ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                var character = snapshot.data![index];
                return Card(
                  elevation: 5,
                  margin: const EdgeInsets.only(top: 5, left: 5, right: 5),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.black,
                      child: Icon(
                        character.image,
                      ),
                    ),
                    title: Text(character.name),
                  ),
                );
              },
            );*/
          }
          return const Center(
            child: CircularProgressIndicator(
              strokeWidth: 5.0,
              color: Colors.pink,
            ),
          );
        },
      ),
    );
  }
}
