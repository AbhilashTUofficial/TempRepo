import 'package:flutter/material.dart';
import 'package:ncas_app_ui/export.dart';

import 'Services/controller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ncas Cards',
      theme: ThemeData(primaryColor: primeColor),
      debugShowCheckedModeBanner: false,
      home:Controller(),//LoginScreen(),
    );
  }
}
