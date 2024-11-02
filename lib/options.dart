import 'package:flutter/material.dart';

class Option extends StatelessWidget {
  const Option({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Health Tracker'),
        
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
           
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                
                Navigator.pushNamed(context, '/bmi');
              },
              child: Text('Body Mass Index (BMI) '),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/bmr');
              },
              child: Text('Basal Metabolic Rate (BMR)'),
            ),
           
           
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/fat');
              },
              child: Text('Body Fat Percentage Calculator'),
            )
          ],
        ),
      ),
    );
  }
}
