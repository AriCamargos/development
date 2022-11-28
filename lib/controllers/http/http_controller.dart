// ignore: import_of_legacy_library_into_null_safe
import 'package:get/get.dart';

import 'package:rick_morty/controllers/i_repository_characters.dart';

//StateMixin - loading, error e success
class HttpController extends GetxController with StateMixin {
  ICharacterRepository? httpRepository;

  HttpController({
    this.httpRepository,
  });

  //Ciclo de vida
  @override
  void onInit() {
    super.onInit();
    findCharacters();
  }

  Future<void> findCharacters() async {
    change([], status: RxStatus.loading());
    try {
      final data = await httpRepository?.findAllCharacters();
      change(data, status: RxStatus.success());
    } catch (e) {
      change([], status: RxStatus.error('Erro ao buscar personagens!'));
    }
  }
}
