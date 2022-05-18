import 'package:flutter/material.dart';
import '../constants.dart';
import '../Components/reusableCard.dart';
import '../Components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.getBMI,
      required this.getResult,
      required this.getInterpretation});

  final String getBMI;
  final String getResult;
  final String getInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15),
            child: Text(
              'YOUR RESULT',
              style: kTitleTextStyle,
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    getResult,
                    style: kResultTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    getBMI,
                    style: kBMITextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    getInterpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              onPressed: () {
                Navigator.pop(context);
              },
              buttonText: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
