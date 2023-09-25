import 'package:bmi_app/models/person.dart';
import 'package:bmi_app/pages/components/elevated_button_genre_component.dart';
import 'package:bmi_app/pages/components/text_form_field_component.dart';
import 'package:bmi_app/pages/widget/avatar_widget.dart';
import 'package:bmi_app/pages/widget/elevated_button_widget.dart';
import 'package:bmi_app/pages/widget/header_page_widget.dart';
import 'package:flutter/material.dart';

class PrincipalPage extends StatefulWidget {
  PrincipalPage({super.key, required this.name});
  String name;
  String? avatar;
  Person? person;
  @override
  State<PrincipalPage> createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  TextEditingController ageController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();

  @override
  void dispose() {
    ageController.dispose();
    weightController.dispose();
    heightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 193, 125, 1),
        iconTheme: IconThemeData(color: Color.fromARGB(255, 20, 15, 15)),
      ),
      backgroundColor: Color.fromRGBO(255, 193, 125, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderPageWidget(
              title: "Hi, ${widget.name}",
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AvatarWidget(
                          avatar: "assets/man.png",
                          height: 80,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        AvatarWidget(
                          avatar: "assets/woman.png",
                          height: 80,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButtonSelectGenre(
                        genre: "Man",
                        avatar: 'assets/man.png',
                      ),
                      ElevatedButtonSelectGenre(
                        genre: "Female",
                        avatar: "assets/woman.png",
                      )
                    ],
                  ),
                  TextFormFieldComponent(
                    title: "Age",
                    controller: ageController,
                    icon: const Icon(Icons.cake),
                  ),
                  TextFormFieldComponent(
                    title: "Weight",
                    icon: const Icon(Icons.line_weight),
                    controller: weightController,
                  ),
                  TextFormFieldComponent(
                    title: "Height",
                    icon: const Icon(Icons.height),
                    controller: heightController,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: ElevatedButtonWidget(
                      textColor: Colors.white,
                      backgroundColor: Color.fromRGBO(255, 193, 125, 1),
                      title: "Calcule seu IMC",
                      name: widget.name,
                      age: ageController.value.text,
                      height: heightController.value.text,
                      weight: weightController.value.text,
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
