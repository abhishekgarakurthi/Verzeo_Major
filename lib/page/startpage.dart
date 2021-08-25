import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_drawer_example/page/Loginpage.dart';
import 'package:navigation_drawer_example/page/Signuppage.dart';
import 'package:provider/provider.dart';

import 'google_sign_in.dart';

void main() => runApp(startpage());

// ignore: camel_case_types
class startpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _OutlinedButtonExample(),
      theme: ThemeData(
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(primary: Colors.white),
        ),
      ),
    );
  }
}

class _OutlinedButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          OutlinedButton(
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: StadiumBorder(),
                minimumSize: Size(230.0, 50.0),
                side: BorderSide(
                  width: 1,
                  color: Colors.black54,
                )),
            child: Text(
              'Login',
              style: TextStyle(fontSize: 23),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Loginpage()));
            },
          ),
          Container(
            height: 25,
            width: 100,
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: StadiumBorder(),
                minimumSize: Size(230.0, 50.0),
                side: BorderSide(
                  width: 1,
                  color: Colors.black54,
                )),
            child: Text(
              'Register',
              style: TextStyle(fontSize: 23),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Signuppage()));
            },
          ),
          Container(
            height: 25,
            width: 100,
          ),
          const SizedBox(height: 24),
          Divider(color: Colors.black),
          const SizedBox(height: 24),
          const SizedBox(height: 16),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.green[400],
                shape: StadiumBorder(),
                minimumSize: Size(230.0, 50.0),
                side: BorderSide(
                  width: 1,
                  color: Colors.black54,
                )),
            child: Text('Google Sign in', style: TextStyle(fontSize: 23)),
            onPressed: () {
              final provider =
                  Provider.of<GoogleSignInProvider>(context, listen: false);
              provider.googleLogin();
            },
          ),
        ],
      )),
    );
  }
}
