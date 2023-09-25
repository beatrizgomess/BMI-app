import 'package:bmi_app/models/person.dart';
import 'package:bmi_app/pages/components/bar_information_component.dart';
import 'package:bmi_app/pages/components/bmi_level_component.dart';
import 'package:bmi_app/pages/list_imc_page.dart';
import 'package:bmi_app/pages/widget/avatar_widget.dart';
import 'package:bmi_app/pages/widget/header_page_widget.dart';
import 'package:bmi_app/repositories/imc_repository_imp.dart';
import 'package:flutter/material.dart';

class BMIResultPage extends StatefulWidget {
  BMIResultPage({
    super.key,
    required this.person,
  });
  Person person;
  String? age;
  String? weight;
  String? height;
  double? result;

  @override
  State<BMIResultPage> createState() => _BMIResultPageState();
}

class _BMIResultPageState extends State<BMIResultPage> {
  String? resultFormat;
  IMCRepositoryImp _imcRepositoryImp = IMCRepositoryImp();
  Person? person2;
  List<String> personInfos = [];
  var persons = Person;
  var imc;
  void getInfo() {}

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("result dentro do widget: ${widget.result}");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 193, 125, 1),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      backgroundColor: const Color.fromRGBO(255, 193, 125, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  HeaderPageWidget(
                    title: "Resultado do seu IMC",
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                        maxRadius: 80,
                        child: Text(
                          widget.person.imc.toString(),
                          style: const TextStyle(
                              fontSize: 30, color: Colors.white),
                        ),
                      )),
                  BarInformationBMI(
                      age: widget.person.age.toString(),
                      height: widget.person.height.toString(),
                      weight: widget.person.weight.toString()),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 2.3,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      margin: const EdgeInsets.only(
                          top: 10, left: 10, right: 10, bottom: 10),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            BMILevelComponent(
                              color: Colors.blue.shade900,
                              level: "Very Severely underweight",
                              numberLevel: "< 16",
                            ),
                            BMILevelComponent(
                              color: Colors.blue,
                              level: "Severely underweight",
                              numberLevel: "16.0-16.9",
                            ),
                            BMILevelComponent(
                              color: Colors.blue.shade200,
                              level: "Underweight",
                              numberLevel: "17.0-18.4",
                            ),
                            BMILevelComponent(
                              color: Colors.green,
                              level: "Normal",
                              numberLevel: "18.5-24.9",
                            ),
                            BMILevelComponent(
                              color: Colors.yellow,
                              level: "Overweight",
                              numberLevel: "25.0-29.9",
                            ),
                            BMILevelComponent(
                              color: Colors.orange.shade300,
                              level: "Obese class I",
                              numberLevel: "30.0-34.9",
                            ),
                            BMILevelComponent(
                              color: Colors.orange.shade700,
                              level: "Obese class II",
                              numberLevel: "35.0-39.9",
                            ),
                            BMILevelComponent(
                              color: Colors.red,
                              level: "Obese class III",
                              numberLevel: "> 39.9",
                            ),
                            Divider(
                              indent: MediaQuery.of(context).size.width / 50,
                              endIndent: MediaQuery.of(context).size.width / 50,
                            ),
                            SizedBox(height: 5),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ListIMCPage()));
                                },
                                child: Text("Lista de IMC"))
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
