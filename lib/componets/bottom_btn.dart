
import 'package:flutter/material.dart';
import '../constants.dart';



class BottomWidget extends StatelessWidget {
  BottomWidget({@required this.onTop, @required this.buttonTitle});
  final Function onTop;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTop,
      child: Container(
        child: Center
          (child: Text(buttonTitle, style: kLargeButtonStyle,),),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}