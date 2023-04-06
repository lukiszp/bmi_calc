import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({super.key, this.text = 'button'});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kAccentColor2,
      margin: const EdgeInsets.only(top: 10),
      width: double.infinity,
      height: kBottomContainerHeight,
      child: Center(
          child: Text(
        text,
        style: kBottomButtonTextStyle,
      )),
    );
  }
}
