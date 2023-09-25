import 'package:bmi_app/pages/initial_page.dart';
import 'package:bmi_app/pages/principal_page.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key, required this.name});
  String name;
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int viewAtual = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: viewAtual);
  }

  setViewAtual(view) {
    setState(() {
      viewAtual = view;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          PrincipalPage(
            name: widget.name,
          ),
          PrincipalPage(
            name: "",
          )
        ],
        onPageChanged: setViewAtual,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: viewAtual,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Times',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.star), label: 'Favorite Times')
        ],
        onTap: (view) => pageController.animateToPage(view,
            duration: Duration(milliseconds: 400), curve: Curves.ease),
      ),
    );
  }
}
