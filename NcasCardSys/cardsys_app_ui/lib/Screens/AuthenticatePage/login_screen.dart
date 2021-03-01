import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../export.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _rememberMe = false;

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
                      SizedBox(height: 30),
                      // Logo
                      Container(
                        padding: EdgeInsets.all(15),
                        height: 140,
                        width: 140,
                        decoration: boxDecorationStyle,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/img/logo.png"),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      //Enter Username/Email
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Username or Email',
                            style: labelStyle,
                          ),
                          SizedBox(height: 10.0),
                          Container(
                            alignment: Alignment.centerLeft,
                            decoration: boxDecorationStyle,
                            height: 60.0,
                            child: TextField(
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'OpenSans',
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(top: 14.0),
                                prefixIcon: Icon(
                                  Icons.account_circle,
                                  color: Colors.white,
                                ),
                                hintText: 'Enter your Username or Email',
                                hintStyle: hintTextStyle,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      //Enter Password
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Password',
                            style: labelStyle,
                          ),
                          SizedBox(height: 10.0),
                          Container(
                            alignment: Alignment.centerLeft,
                            decoration: boxDecorationStyle,
                            height: 60.0,
                            child: TextField(
                              obscureText: true,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'OpenSans',
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(top: 14.0),
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Colors.white,
                                ),
                                hintText: 'Enter your Password',
                                hintStyle: hintTextStyle,
                              ),
                            ),
                          ),
                        ],
                      ),
                      //Remember me + Forgot password?
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 20.0,
                            child: Row(
                              children: <Widget>[
                                Theme(
                                  data: ThemeData(
                                      unselectedWidgetColor: Colors.white),
                                  child: Checkbox(
                                    value: _rememberMe,
                                    checkColor: Colors.green,
                                    activeColor: Colors.white,
                                    onChanged: (value) {
                                      setState(() {
                                        _rememberMe = value;
                                      });
                                    },
                                  ),
                                ),
                                Text(
                                  'Remember me',
                                  style: labelStyle,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            child: FlatButton(
                              onPressed: () =>
                                  print('Forgot Password Button Pressed'),
                              padding: EdgeInsets.only(right: 0.0),
                              child: Text(
                                'Forgot Password?',
                                style: labelStyle,
                              ),
                            ),
                          ),
                        ],
                      ),
                      //LogIn Button
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 25.0),
                        width: double.infinity,
                        child: RaisedButton(
                          elevation: 5.0,
                          onPressed: () => print('Login Button Pressed'),
                          padding: EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: Colors.white,
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                              color: Color(0xFF527DAA),
                              letterSpacing: 1.5,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'OpenSans',
                            ),
                          ),
                        ),
                      ),
                      // Already have an account?
                      Container(
                        alignment: Alignment.center,
                        child: FlatButton(
                          onPressed: () =>
                              print('back to login Button Pressed'),
                          child: Text(
                            'Already have an account?',
                            style: labelStyle,
                          ),
                        ),
                      )
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
