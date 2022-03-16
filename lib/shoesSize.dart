import 'package:flutter/material.dart';
import 'constants.dart';

class ShoesSize extends StatelessWidget {
  final String size;
  final bool isAvilable ;

  const ShoesSize({Key key,
    this.size,
    this.isAvilable
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  OutlineButton(
      splashColor: subColor,

      child: Text (size,
        style: TextStyle(
            color: subColor
        ),),
      onPressed: (){},
      shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
      borderSide: BorderSide(color: subColor, width: 2),
    );;
  }
}
