/*import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/http_controller.dart';
import '../models/character_model.dart';

class DetailsPage extends GetView<HttpController> {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controller.obx(
        (state) => ListView.builder(
            itemCount: 10,
            itemBuilder: (_, index) {
              final List<CharacterModel> item = state[index];
              return ListTile(
                title: Text('${item.name}'),
                subtitle: Text('${item.species}'),
              );
            }),
      ),
    );
  }
}*/