class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}

enum Status {
  alive,
  unknown,
  dead,
}

final statusValues = EnumValues({
  "Alive": Status.alive,
  "Dead": Status.dead,
  "Unknown": Status.unknown,
});

enum Species {
  human,
  alien,
}

final speciesValues = EnumValues({
  "Alien": Species.alien,
  "Human": Species.human,
});

enum Gender {
  male,
  female,
  unknown,
}

final genderValues = EnumValues({
  "Female": Gender.female,
  "Male": Gender.male,
  "unknown": Gender.unknown,
});
