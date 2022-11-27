import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:get/get.dart';
import 'package:rick_morty/controllers/http_controller.dart';
// ignore: unused_import
import 'package:rick_morty/models/character_model.dart';

class HttpPage extends GetView<HttpController> {
  const HttpPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('API Rick and Morty'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (() {}),
            icon: const Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.filter_alt,
            ),
          ),
        ],
      ),
      body: controller.obx((state) => ListView.builder(
            itemCount: state.lenght,
            itemBuilder: (_, index) {
              final CharacterModel item = state[index];
              return ListTile(
                title: Text('${item.name}'),
               // subtitle: Text('${item.species}'),
              );
            }), onError: (error) =>  
        const Center(
          child: Text(
            'Erro ao carregar página! ',
          ),
        )
      , onLoading: const CircularProgressIndicator()), 
    );
  }
}
