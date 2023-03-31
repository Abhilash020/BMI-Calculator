import 'package:bmi_calculator/components/ReusableCard.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class Resultpage extends StatelessWidget {
  Resultpage(
      {required this.bmiResults,
      required this.resultText,
      required this.interpretation});

  final String bmiResults;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Center(
              child: Text(
                'YOUR RESULT',
                style: ktitletextstyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kactivecardcolor,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kresulttextstyle,
                  ),
                  Text(
                    bmiResults,
                    style: kBMItextstyle,
                  ),
                  Text(
                    interpretation,
                    style: kbodytextstyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              onpressed: () {},
            ),
          ),
          Bottombutton(
            buttontitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
