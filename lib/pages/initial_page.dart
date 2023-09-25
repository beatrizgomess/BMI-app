import 'package:bmi_app/models/person.dart';
import 'package:bmi_app/pages/components/alert_dialog_component.dart';
import 'package:bmi_app/pages/components/caroussel_slider.dart';
import 'package:bmi_app/pages/components/elevated_button_modal_bottom_sheet.dart';
import 'package:bmi_app/pages/components/modal_bottom_sheet_component.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 193, 125, 1),
      // shade800
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 22),
              child: Text(
                "Calcule seu IMC",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 2),
              ),
            ),
            CarousselSliderComponent(),
            Padding(
              padding: const EdgeInsets.only(bottom: 30, left: 20, right: 20),
              child: Container(
                height: MediaQuery.of(context).size.height / 5,
                decoration: BoxDecoration(
                    // color: Colors.white.withOpacity(1),
                    borderRadius: BorderRadius.circular(50)),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Vamos verificar seu índice\n de massa corporal (IMC)? \n",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          wordSpacing: 9,
                          fontWeight: FontWeight.w700),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            ' Acompanhar o IMC é importante pois\n ele diz muito sobre a sua saúde ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                wordSpacing: 9)),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Center(
                  child: SizedBox(
                height: MediaQuery.of(context).size.height / 18,
                width: MediaQuery.of(context).size.width / 2,
                child: ElevatedButtonModalBottomSheet(
                  widget: ModalBottomSheetComponent(),
                  title: 'Iniciar',
                  textColor: Colors.black,
                  backgroundColor: Colors.white,
                ),
              )),
            ),
            TextButton.icon(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext builder) {
                      return const AlertDialogComponent();
                    });
              },
              icon: const Icon(Icons.arrow_circle_right_rounded,
                  color: Colors.white),
              label: const Text(
                "O que é IMC ?",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
