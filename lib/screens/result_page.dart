import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/componets/reuse_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/componets/bottom_btn.dart';
class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmiResult,@required this.resultText,@required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI '),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kTitleStyle ,),
              )),
          Expanded(
            flex: 5,
              child: ReuseCard(color: kActiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(resultText.toUpperCase(), style: kResultTextStyle,),
                  Text(bmiResult, style: kBigTextStyle,),
                  Text(interpretation,
                    textAlign: TextAlign.center,
                    style:kLowerStyle,),

                ],
              ) ,
              ),
          ),
          BottomWidget(onTop: (){
            Navigator.pop(context);
          },
              buttonTitle: 'RE-CALCULATE')
        ],
      )
    );
  }
}
