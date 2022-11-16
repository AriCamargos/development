import 'package:flutter_modular/flutter_modular.dart';

import '../main.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const HomePage(),
        ),
//        ChildRoute(
//          '/profile',
//          child: (_, args) => PageProfile(),
//        ),
      ];
}
