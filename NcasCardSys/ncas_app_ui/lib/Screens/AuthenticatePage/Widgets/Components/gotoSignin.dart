import 'package:flutter/material.dart';
import 'package:ncas_app_ui/Screens/Palette/constants.dart';
class GotoSignIn extends StatefulWidget {
  @override
  _GotoSignInState createState() => _GotoSignInState();
}

class _GotoSignInState extends State<GotoSignIn> {
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
