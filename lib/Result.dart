import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final double result;
  final bool isMale;
  final int age;

  Result(this.result, this.isMale, this.age);

  String get resultPhrase {
    String resultText = "";
    if (result >= 30) {
      resultText = "obese!!";
    } else if (result > 25 && result < 30) {
      resultText = "overweight!";
    } else if (result >= 18.5 && result <= 24.9) {
      resultText = "normal";
    } else {
      resultText = "thin";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "gender: ${isMale ? "male" : "female"}",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "result : ${result.toStringAsFixed(2)}",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "age : $age",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "healthiness : $resultPhrase",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
