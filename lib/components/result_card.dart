import 'package:flutter/material.dart';
import '../constants.dart';

class ResultCard extends StatelessWidget {
  const ResultCard(
      {super.key,
      required this.bmiResult,
      required this.interpretation,
      required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            resultText,
            style: kResultTextStyle,
          ),
          Text(
            bmiResult,
            style: kResultBMITextStyle,
          ),
          Text(
            interpretation,
            style: kResultDescriptionTextStyle,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
