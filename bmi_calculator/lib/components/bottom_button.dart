import 'package:flutter/material.dart';
import '../constants.dart';


class BottomButton extends StatelessWidget {

  final String buttonTitle;
  final Function customOnTap;

  BottomButton({@required this.buttonTitle, @required this.customOnTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: customOnTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}