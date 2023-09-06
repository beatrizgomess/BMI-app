import 'package:bmi_app/pages/principal_page.dart';
import 'package:flutter/material.dart';

class ModalBottomSheetComponent extends StatelessWidget {
  const ModalBottomSheetComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                "Qual o seu Nome? ",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              const SizedBox(height: 10),
              const Text(
                "Nos informe seu nome para que possamos oferecer a você uma experiência personalizada ",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              const SizedBox(height: 10),
              TextButton.icon(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const PrincipalPage()));
                },
                icon: const Icon(Icons.arrow_circle_right),
                label: const Text("Pular"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
