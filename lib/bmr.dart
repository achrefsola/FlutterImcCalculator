import 'package:flutter/material.dart';
import 'strings.dart';
class BMRPage extends StatefulWidget {
  @override
  _BMRPageState createState() => _BMRPageState();
}

class _BMRPageState extends State<BMRPage> {
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  double result = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMR Calculator'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: weightController,
              decoration: InputDecoration(labelText: 'Weight (kg)'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: heightController,
              decoration: InputDecoration(labelText: 'Height (cm)'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: ageController,
              decoration: InputDecoration(labelText: 'Age (years)'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  double weight = double.parse(weightController.text);
                  double height = double.parse(heightController.text);
                  int age = int.parse(ageController.text);
                  result = calculateBMR(weight, height, age);
                });
              },
              child: Text('Calculate'),
            ),
            SizedBox(height: 16.0),
            Text(
              'Basal Metabolic Rate (BMR): ${result.toStringAsFixed(2)} calories',
              style: TextStyle(fontSize: 20.0),
            ),SizedBox(height: 5),
            Text(info,
             style: TextStyle(
              color: Color.fromARGB(255, 140, 43, 231),
            fontSize: 18,
            fontWeight: FontWeight.w100,
            ),
            ),
             SizedBox(height: 5),
            Text(
              bmrdesc,
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

  double calculateBMR(double weight, double height, int age) {
    // Harris-Benedict equation for men
    double bmr = 88.362 + (13.397 * weight) + (4.799 * height) - (5.677 * age);
    return bmr;
  }
}
