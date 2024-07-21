import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rick_morty/presenter/pages/character_state.dart';
import 'package:rick_morty/presenter/pages/widgets/character_widget.dart';

class CharacterPage extends StatefulWidget {
  const CharacterPage({
    super.key,
  });

  @override
  State<CharacterPage> createState() => _CharacterPageState();
}

class _CharacterPageState extends State<CharacterPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        context.read<CharacterState>().loadingCharacter(page: 1, count: 20);
        context.read<CharacterState>().loadingEpisode(page: 1, count: 20);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Api Rick e Morty'),
      ),
      body: Container(
        decoration: const BoxDecoration(color: Color(0XFF272b33)),
        child: Consumer<CharacterState>(
          builder: (_, state, child) {
            if (state.isLoading && state.character.isEmpty) {
              return const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 5.0,
                  color: Colors.pink,
                ),
              );
            }
            if (state.error != null) {
              return Center(
                child: Text('${state.error}'),
              );
            }
            if (state.character.isEmpty) {
              return const Center(
                child: Text('Lista vazia'),
              );
            }

            return NotificationListener<ScrollNotification>(
              onNotification: (ScrollNotification scrollInfo) {
                if (!state.isLoading &&
                    scrollInfo.metrics.pixels ==
                        scrollInfo.metrics.maxScrollExtent) {
                  state.loadingCharacter(
                    page: (state.character.length ~/ 20) + 1,
                    count: 20,
                  );
                  return true;
                }
                return false;
              },
              child: ListView.builder(
                itemCount: state.character.length,
                itemBuilder: (context, index) {
                  var character = state.character[index];
                  var episode = (index < state.episode.length) ? state.episode[index] : null;
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CharacterWidget(
                      character: character,
                      episode: episode,
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}