import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../export.dart';
class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _rememberMe=false;
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
                      //Logo
                      Container(
                          padding: EdgeInsets.all(15),
                          height: 140,
                          width: 140,
                          decoration: boxDecorationStyle,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/img/logo.png"),
                          )
                      ),
                      //Enter UserName
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Username',
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
                                hintText: 'Enter your Username',
                                hintStyle: hintTextStyle,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      //Enter Email
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Email',
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
                                  Icons.email,
                                  color: Colors.white,
                                ),
                                hintText: 'Enter your Email',
                                hintStyle: hintTextStyle,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
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
                      SizedBox(height: 20.0),
                      //Confirm Password
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Conform password',
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
                                hintText: 'Conform your Password',
                                hintStyle: hintTextStyle,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        //Remember me
                        Container(
                          height: 20.0,
                          child: Row(
                            children: <Widget>[
                              Theme(
                                data: ThemeData(unselectedWidgetColor: Colors.white),
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
                        //Already have a account?
                        Container(
                          alignment: Alignment.center,
                          child: FlatButton(
                            onPressed: () => print('back to login Button Pressed'),
                            padding: EdgeInsets.only(right: 0.0),
                            child: Text(
                              'Already have an account?',style: labelStyle,
                              // style: labelStyle,
                            ),
                          ),
                        ),
                      ],),
                      //SignUp Button
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 25.0),
                        width: double.infinity,
                        child: RaisedButton(
                          elevation: 5.0,
                          onPressed: () => print('Sign in Button Pressed'),
                          padding: EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: Colors.white,
                          child: Text(
                            'SIGN IN',
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
