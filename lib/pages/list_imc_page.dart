import 'package:bmi_app/models/person.dart';
import 'package:bmi_app/repositories/imc_repository_imp.dart';
import 'package:flutter/material.dart';

class ListIMCPage extends StatefulWidget {
  ListIMCPage({super.key});
  @override
  State<ListIMCPage> createState() => _ListIMCPageState();
}

class _ListIMCPageState extends State<ListIMCPage> {
  IMCRepositoryImp _imcRepositoryImp = IMCRepositoryImp();
  var _person = const <Person>[];

  void getInfo() async {
    _person = await _imcRepositoryImp.getInfo();
  }

  @override
  void initState() {
    getInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Seus Resultados de IMC"),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: _person.length,
            itemBuilder: (BuildContext context, int index) {
              var person = _person[index];
              return ListTile(
                  leading: Icon(Icons.account_box_sharp),
                  trailing: Text(
                    person.imc.toString(),
                    style: TextStyle(color: Colors.green, fontSize: 15),
                  ),
                  title: Text("${person.name}"));
            }),
      ),
    );
  }
}
