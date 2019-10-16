import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:loginui/signup.dart';
import 'constants.dart';

void main() => runApp(
      MaterialApp(
        home: MyApp(),
        theme: ThemeData(
            fontFamily: 'Abel',
            primaryColor: primaryRegular,
            scaffoldBackgroundColor: scaffoldColor),
      ),
    );

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 50.0, left: 30.0, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 25.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('PROJECT', style: kBigBold),
                      SizedBox(width: 10.0),
                      Text('X', style: kBigText),
                    ],
                  ),
                  SizedBox(height: 28),
                  TextFormField(
                    autofocus: true,
                    cursorColor: primaryRegular,
                    decoration: InputDecoration(
                      prefixIcon: Icon(LineIcons.user),
                      labelText: 'Email',
                      hintText: 'jondoe@email.com',
                      hintStyle: TextStyle(color: Colors.black26),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: primaryRegular),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    child: TextFormField(
                      obscureText: true,
                      cursorColor: primaryRegular,
                      decoration: InputDecoration(
                        prefixIcon: Icon(LineIcons.lock),
                        suffixIcon: IconButton(
                          icon: Icon(LineIcons.eye),
                          onPressed: () {},
                        ),
                        labelText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: primaryRegular)),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.center,
                    child: Text('Forgot Password?', style: kGreyRegularText),
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.center,
                    child: RaisedButton(
                      textColor: Colors.white,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0)),
                      color: primaryRegular,
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Don't have an Account?  ",
                            style: kGreyRegularText),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUpPage()));
                            },
                            child: Text('Sign Up', style: kURegularText)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
