import 'package:faker/faker.dart';

class CharacteristicCardListModel {
    final String name;
    final String image;
    final String species;
    final int quantityEpisodes;
    
  const CharacteristicCardListModel({
    required this.name,
    required this.image,
    required this.species,
    required this.quantityEpisodes,
  });

  factory CharacteristicCardListModel.fromJson(Map<String, dynamic> json) {
    return CharacteristicCardListModel(
      name: json['name'],
      image: json['image'],
      species: json['species'],
      quantityEpisodes: json['episode'],
    );
  }

  factory CharacteristicCardListModel.fake() => CharacteristicCardListModel(
        name: faker.person.name(),
        image: faker.image.image(random: true, keywords: ['peoples']),
        species: faker.lorem.word(),
        quantityEpisodes: faker.randomGenerator.integer(10),
      );

  static List<CharacteristicCardListModel> fakeList({required int length}) {
    return List<CharacteristicCardListModel>.generate(
      length,
      (index) => CharacteristicCardListModel.fake(),
    );
  }
}
