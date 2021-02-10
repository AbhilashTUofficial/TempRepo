import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ncas_app_ui/export.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              BackgroundGradient(),
              Container(
                //height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 60.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      //SizedBox(height: 60),
                      LogoSpace(),
                      SizedBox(height: 20.0),
                      EnterEmail(),
                      SizedBox(height: 20.0),
                      EnterPassword(),
                      ForgotPassword(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [RememberMeCheckbox(), GotoSignIn()],
                      ),
                      LoginButton(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
