import 'dart:math';

import 'package:bmi_app/repositories/imc_respository.dart';

class IMCRepositoryImp implements IMCRepository {
  @override
  double calculateIMC(double weight, double height) {
    double imc = weight / (pow(height, 2));
    return double.parse(imc.toStringAsFixed(2));
  }
}
