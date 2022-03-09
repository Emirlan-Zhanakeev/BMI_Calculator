import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:flutter/material.dart';
import '../components/reusable_card.dart';
import '../constants.dart';

// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_constructors

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.bmiResult,
      required this.interpretation,
      required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text('Your Result', style: kTitleTextStyle)),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                // не дает слипнутся виджету
                children: [
                  Text(resultText.toUpperCase(),
                      style: kResultTextStyle, textAlign: TextAlign.center),
                  Text(bmiResult,
                      style: kBMITextStyle, textAlign: TextAlign.center),
                  Text(interpretation,
                      textAlign: TextAlign.center, style: kBodyTextStyle),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
