import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

class GenderWidget extends StatelessWidget {
  const GenderWidget({
    super.key,
    this.isMale = true,
  });

  final bool isMale;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          isMale ? FontAwesomeIcons.mars : FontAwesomeIcons.venus,
          size: 80,
          color: kMainColor,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(isMale ? "MALE" : "FEMALE", style: kLabelTextStyle)
      ],
    );
  }
}
