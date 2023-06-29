// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

class InfoEntity extends Equatable {
  int count;
  int pages;
  String next;

  InfoEntity({
    required this.count,
    required this.pages,
    required this.next,
  });

  @override
  List<Object> get props => [
        count,
        pages,
        next,
      ];

}
