import 'package:faker/faker.dart';
import 'package:rick_morty/domain/entity/character_entity.dart';
import 'package:rick_morty/domain/entity/location_entity.dart';
import 'package:rick_morty/domain/entity/origin_entity.dart';

import '../../domain/enum/enum_values.dart';
import 'location_mapper.dart';
import 'origin_mapper.dart';

class CharacterMapper {
  static CharacterEntity fromMap(Map<String, dynamic> json) {
    return CharacterEntity(
      id: json['id'],
      name: json['name'],
      status: statusValues.map[json['status']]!,
      species: speciesValues.map[json['species']]!,
      type: json['type'],
      gender: genderValues.map[json['gender']]!,
      origin: OriginMapper.fromMap(json['origin']),
      location: LocationMapper.fromMap(json['location']),
      image: json['image'],
      episode: List<String>.from(json['episode'].map((x) => x)),
      url: json['url'],
      created: json['created'],
    );
  }

   /*static CharacterEntity fake() {
    final faker = Faker();
    return CharacterEntity(
      id: faker.randomGenerator.integer(1000),
      name: faker.person.name(),
      status: faker.randomGenerator
          .element([StatusEnum.alive, StatusEnum.dead, StatusEnum.unknown]),
      species: faker.randomGenerator
          .element([SpeciesEnum.human, SpeciesEnum.alien, SpeciesEnum.unknown]),
      type: faker.lorem.word(),
      gender: faker.randomGenerator.element([
        GenderEnum.male,
        GenderEnum.female,
        GenderEnum.genderless,
        GenderEnum.unknown
      ]),
      origin: OriginEntity.fake(),
      location: LocationEntity.fake(),
      image: faker.image.image(),
      episode: List.generate(5, (_) => faker.lorem.word()),
      url: faker.internet.httpUrl(),
      created: faker.date.dateTime().toString(),
    );
  } */
}
