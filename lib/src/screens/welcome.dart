import 'package:flutter/material.dart';
import 'dart:ui';


class WelcomeScreen extends StatelessWidget {
  void _navigate(BuildContext context, String path) {
    Navigator.pushReplacementNamed(context, path);
  }

  TextSpan buildPrivacyText(String wording, Color color) {
    return TextSpan(
      text: wording, 
      style: TextStyle(color: color)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Add box decoration
        decoration: BoxDecoration(
          // Box decoration takes a gradient
          gradient: LinearGradient(
            // Where the linear gradient begins and ends
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            // Add one stop for each color. Stops should increase from 0 to 1
            stops: [0.1, 0.5, 0.7, 0.9],
            colors: [
              // Colors are easy thanks to Flutter's Colors class.
              Colors.indigo[800],
              Colors.indigo[700],
              Colors.indigo[600],
              Colors.indigo[400],
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.cover,
            ),
            Center(
              child: Container(
                height: 50.0,
                width: 300.0,
                child: RaisedButton(
                  onPressed: () {
                    _navigate(context, '/login');
                  },
                  textColor: Colors.white,
                  color: Colors.blueAccent,
                  disabledColor: Colors.grey,
                  disabledTextColor: Colors.white,
                  highlightColor: Colors.orangeAccent,
                  child: Text('Login'),
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                ),
              )
            ),
          ])

      ),
    );
  }
}
