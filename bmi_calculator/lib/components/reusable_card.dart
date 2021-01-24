import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  //There was a constructor that is not needed for us, so it has been removed and I added custom constructor

  final Color colorVar;
  final Widget cardChild;
  final Function onCustomPress;

  ReusableCard({@required this.colorVar, this.cardChild, this.onCustomPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onCustomPress,
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15.0),
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
          child: cardChild,
          decoration: BoxDecoration(
            color: colorVar,
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}