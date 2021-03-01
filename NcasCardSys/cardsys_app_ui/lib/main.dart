import 'package:flutter/material.dart';
import 'export.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ncas Cards',
      theme: ThemeData(primaryColor: primeColor),
      debugShowCheckedModeBanner: false,
      home:Frame(),//LoginScreen(),
    );
  }
}
