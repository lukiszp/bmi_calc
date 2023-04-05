import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

class ParametersCard extends StatelessWidget {
  const ParametersCard({super.key, required this.tittleText, this.value = 60});
  final String tittleText;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          tittleText,
          style: kLabelTextStyle,
        ),
        Text(
          value.toString(),
          style: kBoldTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            RoundIconButton(
              icon: FontAwesomeIcons.minus,
            ),
            SizedBox(
              width: 15,
            ),
            RoundIconButton(
              icon: FontAwesomeIcons.plus,
            ),
          ],
        )
      ],
    );
  }
}

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({super.key, this.onPressed, this.icon});

  final IconData? icon;
  final Function? onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: const BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      elevation: 6,
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      onPressed: () {},
      child: Icon(
        icon,
        color: kMainColor,
        size: 30,
      ),
    );
  }
}
