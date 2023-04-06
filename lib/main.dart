import 'package:flutter/material.dart';
// import '../screens/result_page.dart';
import 'screens/input_page.dart';
import 'constants.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF0A0E21)),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: kMainColor),
          bodyMedium: TextStyle(color: kMainColor),
          bodySmall: TextStyle(color: kMainColor),
        ),
      ),
      home: const InputPage(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => const InputPage(),
      //   '/result': (context) => ResultPage(),
      // },
    );
  }
}
