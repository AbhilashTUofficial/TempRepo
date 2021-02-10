import 'package:flutter/material.dart';
import 'package:ncas_app_ui/Screens/Palette/constants.dart';
class GotoLogIn extends StatefulWidget {
  @override
  _GotoLogInState createState() => _GotoLogInState();
}

class _GotoLogInState extends State<GotoLogIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () => print('back to login Button Pressed'),
        padding: EdgeInsets.only(right: 0.0),
        child: Text(
          'Already have an account?',
          style: labelStyle,
        ),
      ),
    );
  }
}
