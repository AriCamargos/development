import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart'; // Certifique-se de adicionar o provider aqui
import 'package:rick_morty/domain/entity/character_entity.dart';
import 'package:rick_morty/external/datasources/character_datasource.dart';
import 'package:rick_morty/presenter/pages/character_page.dart';
import 'package:rick_morty/presenter/pages/character_state.dart';
import 'package:rick_morty/presenter/pages/favorite_state.dart';
import 'package:rick_morty/presenter/pages/widgets/details_widget.dart';
import 'package:rick_morty/presenter/pages/widgets/favorites_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CharacterState(
            getCharacterDatasource: CharacterDatasource(),
          ),
        ),
        ChangeNotifierProvider(
          create: (context) => FavoriteState(
            getCharacterDatasource: CharacterDatasource(),
            count: 20,
            page: 1,
          ),
        )
      ],
      child: MaterialApp(
        title: 'API Rick and Morty',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: const ColorScheme.light(
            primary: Colors.teal,
            secondary: Colors.greenAccent,
          ),
        ),
        routes: {
          '/home': (context) {
            final favoriteState = Provider.of<FavoriteState>(context);
            return CharacterPage(
              favoritePage: FavoritePage(
                listCharacter: favoriteState.character,
              ),
              state: CharacterState(
                getCharacterDatasource: CharacterDatasource(),
              ),
            );
          },
          '/favorite_page': (context) {
            final favoriteState = Provider.of<FavoriteState>(context);
            return FavoritePage(
              listCharacter: favoriteState.character,
            );
          },
          '/details': (context) {
            final args = ModalRoute.of(context)!.settings.arguments
                as Map<String, dynamic>;
            return DetailsWidget(
              details: args['details'],
            );
          }
        },
        home: CharacterPage(
          favoritePage: const FavoritePage(
            listCharacter: [],
          ),
          state: CharacterState(getCharacterDatasource: CharacterDatasource()),
        ),
      ),
    );
  }
}
