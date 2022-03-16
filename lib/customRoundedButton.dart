import 'package:flutter/material.dart';
import 'constants.dart';


class CustomRoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;


  const CustomRoundedButton({
    Key key ,
    this.text,
    this.press,
    this.color = subColor,
    this.textColor = mainColor

  }): super (key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 40),
          color: color,
          onPressed: press,
          child: Text(text,
            style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold ,
                fontSize: 20,
                letterSpacing: 2
            ),
          ) ,
        ),
      ),
    );
  }
}
