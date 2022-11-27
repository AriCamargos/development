// ignore: import_of_legacy_library_into_null_safe
import 'package:get/get.dart';

import 'package:rick_morty/controllers/http_controller.dart';
import 'package:rick_morty/controllers/i_repository_characters.dart';
import 'package:rick_morty/controllers/repository_http_characters.dart';

class HttpBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<ICharacterRepository>(CharacterHttpRepository());
    Get.put(HttpController(httpRepository: Get.find<CharacterHttpRepository>()));
  }
}
