import 'package:bmi_app/pages/components/elevated_button_genre_component.dart';
import 'package:bmi_app/pages/components/text_form_field_component.dart';
import 'package:bmi_app/pages/widget/avatar_widget.dart';
import 'package:bmi_app/pages/widget/elevated_button_widget.dart';
import 'package:bmi_app/pages/widget/header_page_widget.dart';
import 'package:flutter/material.dart';

class PrincipalPage extends StatelessWidget {
  const PrincipalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 193, 125, 1),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      backgroundColor: Color.fromRGBO(255, 193, 125, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderPageWidget(
              title: "Hi, Bea!",
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
                        AvatarWidget(avatar: "assets/man.png"),
                        const SizedBox(
                          width: 20,
                        ),
                        AvatarWidget(avatar: "assets/woman.png"),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButtonSelectGenre(
                        genre: "Man",
                      ),
                      ElevatedButtonSelectGenre(genre: "Female")
                    ],
                  ),
                  TextFormFieldComponent(
                    title: "Age",
                    icon: const Icon(Icons.cake),
                  ),
                  TextFormFieldComponent(
                    title: "Weight",
                    icon: const Icon(Icons.line_weight),
                  ),
                  TextFormFieldComponent(
                    title: "Height",
                    icon: const Icon(Icons.height),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: ElevatedButtonWidget(
                      textColor: Colors.white,
                      backgroundColor: Color.fromRGBO(255, 193, 125, 1),
                      title: "Calcule seu IMC",
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
