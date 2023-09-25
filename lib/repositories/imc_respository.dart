import 'package:bmi_app/models/person.dart';

abstract class IMCRepository {
  double calculateIMC(double weight, double height);
  double calculatePersonIMC(Person person);

  Future<List<Person>> getInfo();
  Future<void> saveInfo(Person person);
}
