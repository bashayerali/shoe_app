import 'package:flutter/material.dart';
import 'constants.dart';

class Sizes extends StatelessWidget {

final bool isSelected;
final Color textColor;
final Color selectedColor;
final String text;


const Sizes({Key key,
  this.isSelected = false,
  this.textColor = subColor,
  this.selectedColor = subColor,
  this.text,
}) : super(key: key);


  @override
  Widget build(BuildContext context) { // continue the work
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
            color: subColor,
            style: !isSelected? BorderStyle.solid : BorderStyle.none
          ),
          borderRadius: BorderRadius.all(Radius.circular(13)),
          color: isSelected? subColor : backgroundColor
        ),
        child: Text(text,
        style: TextStyle(
          fontSize: 14,
          color: isSelected? Colors.white: subColor
        ),
        ),

      ),
    );
  }
}
//
// ChoiceChip(
// onSelected: onSelected,
// label: Text(text,),
// labelStyle: TextStyle(
// color: textColor,
// fontSize: 20
// ),
// selected: isSelected,
// disabledColor: Colors.grey,
// selectedColor: selectedColor,
//
// );