import 'package:flutter/material.dart';
import 'package:rick_morty/domain/entity/character_entity.dart';
import 'package:rick_morty/presenter/pages/widgets/text_row_data.dart';

class DetailsWidget extends StatelessWidget {
  final Character details;
  const DetailsWidget({
    super.key,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Api Rick e Morty'),
      ),
      body: Container(
        color: const Color(0XFF272b33),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Card(
              color: const Color(0XFF3c3e44),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    child: Image.network(details.image),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    details.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextRowData(
                    title: 'Última vez visto',
                    subtitle: details.location.name,
                  ),
                  TextRowData(
                    title: 'Última vez visto',
                    subtitle: details.location.name,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
