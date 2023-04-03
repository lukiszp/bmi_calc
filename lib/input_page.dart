import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'gender_widget.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({super.key});
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: const Color(0xFF0A0E21),
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: const [
                Expanded(
                    child: ReusableCard(
                  color: activeCardColor,
                  cardChild: GenderWidget(),
                )),
                Expanded(
                    child: ReusableCard(
                  color: activeCardColor,
                  cardChild: GenderWidget(
                    isMale: false,
                  ),
                )),
              ],
            ),
          ),
          const Expanded(child: ReusableCard(color: activeCardColor)),
          Expanded(
            child: Row(
              children: const [
                Expanded(child: ReusableCard(color: activeCardColor)),
                Expanded(child: ReusableCard(color: activeCardColor)),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: const EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
