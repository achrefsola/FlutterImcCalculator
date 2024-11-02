import 'package:flutter/material.dart';
import 'dart:math';
import 'strings.dart';

class BodyFatCalculatorPage extends StatefulWidget {
  @override
  _BodyFatCalculatorPageState createState() => _BodyFatCalculatorPageState();
}

class _BodyFatCalculatorPageState extends State<BodyFatCalculatorPage> {
  TextEditingController waistController = TextEditingController();
  TextEditingController neckController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  double result = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Body Fat Calculator'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: waistController,
              decoration: InputDecoration(labelText: 'Waist (cm)'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: neckController,
              decoration: InputDecoration(labelText: 'Neck (cm)'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: heightController,
              decoration: InputDecoration(labelText: 'Height (cm)'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  double waist = double.parse(waistController.text);
                  double neck = double.parse(neckController.text);
                  double height = double.parse(heightController.text);
                  result = calculateBodyFatPercentage(waist, neck, height);
                });
              },
              child: Text('Calculate'),
            ),
            SizedBox(height: 16.0),
            Text(
              'Body Fat Percentage: ${result.toStringAsFixed(2)}%',
              style: TextStyle(fontSize: 20.0),
            ),
             SizedBox(height: 5),
            Text(info,
             style: TextStyle(
              color: Color.fromARGB(255, 140, 43, 231),
            fontSize: 18,
            fontWeight: FontWeight.w100,
            ),
            ),
             SizedBox(height: 5),
            Text(
              fatdesc,
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 16,
                
              ),
            ),
          ],
        ),
      ),
    );
  }

  double calculateBodyFatPercentage(double waist, double neck, double height) {
    
    double bfPercentage = 495 / (1.0324 - 0.19077 * log10(waist - neck) + 0.15456 * log10(height)) - 450;
    return bfPercentage;
  }

  double log10(num x) => log(x) / ln10;
}
