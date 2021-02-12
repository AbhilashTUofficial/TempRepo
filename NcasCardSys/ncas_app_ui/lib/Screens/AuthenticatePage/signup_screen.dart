import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Widgets/Components/gotoLogIn.dart';
import 'package:ncas_app_ui/export.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
                      EnterUsername(),
                      SizedBox(height: 20),
                      EnterEmail(),
                      SizedBox(height: 20.0),
                      EnterPassword(),
                      SizedBox(height: 20),
                      ConformPassword(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [RememberMeCheckbox(), GotoLogIn()],
                      ),
                      SigninButton(),
                      //LoginButton(),
                      //_newUser(),
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
