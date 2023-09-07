import 'package:bmi_app/models/enum_genre.dart';

class Person {
  late String _name;
  late String _age;
  late double _weight;
  late double _height;
  late Genre _genre;

  Genre get genre => _genre;

  set genre(Genre value) {
    _genre = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String get age => _age;

  set age(String value) {
    _age = value;
  }

  double get weight => _weight;

  set weight(double value) {
    _weight = value;
  }

  double get height => _height;

  set height(double value) {
    _height = value;
  }
}
