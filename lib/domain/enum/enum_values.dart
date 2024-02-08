class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}

enum StatusEnum {
  alive,
  unknown,
  dead,
}

final statusValues = EnumValues({
  "Alive": StatusEnum.alive,
  "Dead": StatusEnum.dead,
  "Unknown": StatusEnum.unknown,
});

enum SpeciesEnum {
  human,
  alien,
}

final speciesValues = EnumValues({
  "Alien": SpeciesEnum.alien,
  "Human": SpeciesEnum.human,
});

enum GenderEnum {
  male,
  female,
  unknown,
}

final genderValues = EnumValues({
  "Female": GenderEnum.female,
  "Male": GenderEnum.male,
  "unknown": GenderEnum.unknown,
});
