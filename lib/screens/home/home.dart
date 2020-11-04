import 'package:flutter/material.dart';
import 'package:xlo_mobx/widgets/drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: CustomDrawer(),
    );
  }
}
