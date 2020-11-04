import 'package:flutter/material.dart';
import 'package:xlo_mobx/screens/home/home.dart';

class BaseScreen extends StatelessWidget {

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          HomeScreen(),
          Container(color: Colors.blueGrey),
          Container(color: Colors.redAccent),
          Container(color: Colors.amber),
          Container(color: Colors.blue),
        ],
      ),
    );
  }
}
