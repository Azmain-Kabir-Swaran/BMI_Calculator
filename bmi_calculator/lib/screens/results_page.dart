import 'package:bmi_calculator/components/ReusableCard2.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';


class ResultsPage extends StatelessWidget {

  final String bmiResult;
  final String resultText;
  final String interpretation;
  final String gender;

  ResultsPage({@required this.bmiResult, @required this.resultText, @required this.interpretation, @required this.gender});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard2(
              colorVar: kActiveCardColor,
              cardChild: Padding(
                padding: EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          resultText.toUpperCase(),
                          textAlign: TextAlign.center,
                          style: kResultTextStyle,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          bmiResult,
                          textAlign: TextAlign.center,
                          style: kBMITextStyle,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.0, bottom: 20.0),
                        child: Text(
                          'Gender: '+gender,
                          textAlign: TextAlign.center,
                          style: kLabelTextStyle,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 60.0, bottom: 8.0, left: 8.0, right: 8.0),
                        child: Text(
                          interpretation,
                          textAlign: TextAlign.center,
                          style: kBodyTextStyle,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          BottomButton(
              buttonTitle: 'RE-CALCULATE',
              customOnTap: () {
                Navigator.pop(context);
              },
          ),
        ],
      ),
    );
  }
}
