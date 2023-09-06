import 'package:bmi_app/pages/widget/header_page_widget.dart';
import 'package:flutter/material.dart';

class BMIResultPage extends StatelessWidget {
  BMIResultPage({super.key});

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
              title: "Resultado do seu IMC",
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: const Column(children: [Text("Finalizar")]),
            ),
          ],
        ),
      ),
    );
  }
}
