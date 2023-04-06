import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_card.dart';
import '../components/result_card.dart';
import '../components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {super.key,
      required this.bmiResult,
      required this.interpretation,
      required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  "Your Result",
                  style: kLightTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 9,
              child: ReusableCard(
                color: kActiveCardColor,
                cardChild: ResultCard(
                  bmiResult: bmiResult,
                  resultText: resultText,
                  interpretation: interpretation,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const BottomButton(
                text: 'RE-CALCULATE',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
