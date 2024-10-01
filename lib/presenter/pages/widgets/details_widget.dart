import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rick_morty/domain/entity/character_entity.dart';
import 'package:rick_morty/domain/entity/episode_entity.dart';
import 'package:rick_morty/presenter/pages/widgets/text_row_data.dart';

class DetailsWidget extends StatelessWidget {
  final Character details;
  //final EpisodeEntity episode;
  const DetailsWidget({
    super.key,
    required this.details,
    //required this.episode,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(details.name),
      ),
      body: Container(
        color: const Color(0XFF272b33),
        padding: const EdgeInsets.all(40.0),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 600, // Define o limite máximo da largura da página
            ),
            child: Card(
              color: const Color(0XFF3c3e44),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    child: Image.network(
                      details.image,
                      width: double.infinity,
                    ),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.circle,
                        size: 8,
                        color: details.getColorStatus(details.species),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        details.species,
                        style: TextStyle(
                          color: details.getColorStatus(details.species),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                 /* TextRowData(
                    title: 'Primeira vez visto',
                    subtitle: episode.name,
                  ),*/
                  TextRowData(
                    title: 'Localização: ',
                    subtitle: details.location.name,
                  ),
                  TextRowData(
                    title: 'Quando foi criado: ',
                    subtitle:
                        DateFormat.yMEd().format(DateTime.parse(details.created)),
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
// was were 
