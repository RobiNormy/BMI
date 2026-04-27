import 'package:flutter/material.dart';
import 'cards.dart';
import 'constants.dart';
import 'input.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({
    super.key,
    required this.bmiText,
    required this.bmiResult,
    required this.interpret,
  });

  final String bmiResult;
  final String bmiText;
  final String interpret;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BMI CALCULATOR")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(15.0),
              child: Text("Your Result", style: kStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusedCard(
              color: kmyColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(bmiText.toUpperCase(), style: kresultsTextcolor),
                  Text(bmiResult, style: kread),
                  Text(interpret, style: kbody, textAlign: TextAlign.center),
                ],
              ),
            ),
          ),
          TheGesture(
            label: "Recalculate your BMI",
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => InputPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
