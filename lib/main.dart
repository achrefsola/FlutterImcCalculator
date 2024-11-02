
import 'package:flutter/material.dart';
import 'package:flutter_application/bmi.dart';
import 'package:flutter_application/options.dart';
import 'package:flutter_application/fat.dart';
import 'package:flutter_application/bmr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title :"Health Track",
      home: Home(),
       routes: {
        '/bmi': (context) => BmiPage(),
        '/options': (context) => Option(),
        '/bmr': (context) => BMRPage (),
        '/fat': (context) => BodyFatCalculatorPage (),
    
      },
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
              Navigator.pushNamed(context, '/options');          },
          child: Text('Get Started '),
        ),
      ),
    );
  }
}
