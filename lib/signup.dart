import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:loginui/constants.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 50.0, left: 30.0, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 25.0),
                  Row(
                    children: <Widget>[
                      Text('New', style: kBigBold),
                      SizedBox(width: 10.0),
                      Text('Here?', style: kBigText),
                    ],
                  ),
                  Text('Lets Get You Started!', style: kRegularText),
                  SizedBox(height: 20),
                  TextFormField(
                    cursorColor: primaryRegular,
                    decoration: InputDecoration(
                      prefixIcon: Icon(LineIcons.male),
                      labelText: 'Name',
                      hintText: 'John Doe',
                      hintStyle: TextStyle(color: Colors.black26),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: primaryRegular),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    cursorColor: primaryRegular,
                    decoration: InputDecoration(
                      prefixIcon: Icon(LineIcons.phone),
                      labelText: 'Number',
                      hintText: '+123456789',
                      hintStyle: TextStyle(color: Colors.black26),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: primaryRegular),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    cursorColor: primaryRegular,
                    decoration: InputDecoration(
                      prefixIcon: Icon(LineIcons.envelope_square),
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
                  
                  SizedBox(height: 10),
                  Container(
                    child: TextFormField(
                      obscureText: true,
                      cursorColor: primaryRegular,
                      decoration: InputDecoration(
                        prefixIcon: Icon(LineIcons.lock),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.remove_red_eye),
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
                    child: RaisedButton(
                      textColor: Colors.white,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0)),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      color: primaryRegular,
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Already have an Account?  ",
                            style: kGreyRegularText),
                        InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Text('Login', style: kURegularText)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
  }
}