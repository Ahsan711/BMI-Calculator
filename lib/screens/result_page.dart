import 'package:bmi_calculator/Componets/constants.dart';
import 'package:flutter/material.dart';
import '../Componets/reusable_card.dart';
import '../Componets/BottomButtom.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.resultNumber,
      @required this.resultText,
      @required this.resultOverview});
  final String resultText;
  final String resultNumber;
  final String resultOverview;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 20, top: 20),
              child: Text(
                'Your Result',
                style: kResulttitleText,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              color: kActiveCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    resultOverview.toUpperCase(),
                    style: kResultText,
                  ),
                  Text(
                    resultNumber,
                    style: kBMITextStyle,
                  ),
                  Text(
                    resultText,
                    style: kBMIResultText,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            label: 'Recalculate',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
