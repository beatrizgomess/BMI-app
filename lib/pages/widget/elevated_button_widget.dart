import 'package:bmi_app/models/person.dart';
import 'package:bmi_app/pages/bmi_result.dart';
import 'package:bmi_app/repositories/imc_repository_imp.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ElevatedButtonWidget extends StatelessWidget {
  ElevatedButtonWidget(
      {super.key,
      this.widget,
      required this.age,
      required this.weight,
      required this.height,
      required this.title,
      required this.name,
      required this.backgroundColor,
      required this.textColor});

  Widget? widget;
  String title;
  Color backgroundColor;
  Color textColor;
  String age;
  String name;
  String weight;
  String height;
  IMCRepositoryImp _imcRepositoryImp = IMCRepositoryImp();
  late Person person;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            print(age);
            print(weight);
            print(height);

            double weightFormat = double.parse(weight);
            double heightFormat = double.parse(height);
            double result = _imcRepositoryImp.calculateIMC(
                weightFormat.toDouble(), heightFormat.toDouble());
            var person =
                Person(null, name, age, weightFormat, heightFormat, result);

            _imcRepositoryImp.saveInfo(person);
            return BMIResultPage(
              person: person,
            );
          }),
        );
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          textStyle:
              const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
      child: Text(
        title,
        style: TextStyle(color: textColor),
      ),
    );
  }
}
