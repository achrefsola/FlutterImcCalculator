import 'package:flutter/material.dart';
import 'strings.dart';

class BmiPage extends StatefulWidget {
  @override
  _BmiPageState createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage> {
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  double bmi = 0.0;
  String result = '';

  void _calculateBMI() {
    double height = double.parse(heightController.text);
    double weight = double.parse(weightController.text);
    setState(() {
      bmi = weight * 10000 / ((height * height));
     
      
 if (bmi >= 40) {
        result = 'Obesity (Class III)';
      } else if (bmi >= 35) {
        result = 'Obesity (Class II)';
      } else if (bmi >= 30) {
        result = 'Obesity (Class I)';
      } else if (bmi >= 25) {
        result = 'Overweight';
      } else if (bmi >= 18.5) {
        result = 'Normal';
      } else {
        result = 'Underweight';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: heightController,
              decoration: InputDecoration(labelText: 'Height (cm)'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: weightController,
              decoration: InputDecoration(labelText: 'Weight (kg)'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _calculateBMI();
              },
              child: Text('Calculate'),
            ),
            SizedBox(height: 16.0),
            Text(
              bmi == 0 ? '0' : 'Your BMI is: ${bmi.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
           
            Text(
              result,
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 0, 0),
                fontSize: 18,
                fontWeight: FontWeight.w500,
                
              ),
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
              bmidesc,
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 16,
                
              ),
            ),
              SizedBox(height: 1),
            Text(
              bmidesc1,
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 12,
                
              ),
            ),
             SizedBox(height: 1),
            Text(
              bmidesc2,
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 12,
                
              ),
            ),
             SizedBox(height: 1),
            Text(
              bmidesc3,
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 12,
                
              ),
            ),
             SizedBox(height: 1),
            Text(
              bmidesc4,
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 12,
                
              ),
            ),
             SizedBox(height: 1),
            Text(
              bmidesc5,
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize:12,
                
              ),
            ),
             SizedBox(height: 1),
            Text(
              bmidesc6,
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 12,
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}
