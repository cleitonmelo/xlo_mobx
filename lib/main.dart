import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:xlo_mobx/screens/base/base.dart';
import 'package:xlo_mobx/services/parse.dart';

void main() async {
  initialize();
  runApp(MyApp());
}

Future<void> initialize() async{
  await DotEnv().load('.env');
  await ParseService().initialize();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BaseScreen(),
    );
  }
}
