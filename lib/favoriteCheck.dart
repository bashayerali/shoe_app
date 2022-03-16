import 'package:flutter/material.dart';
import 'constants.dart';

class FavoriteCheck extends StatelessWidget {
  final bool isFavorite;
  final Function press;
  final int index;
  const FavoriteCheck({
    Key key,
    this.isFavorite = false,
    this.press,
    this.index
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      splashColor: subColor,
      child: Padding(
        padding: const EdgeInsets.only(right: 6, top: 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            isFavorite? Icon(Icons.favorite,color:subColor)
                       :Icon(Icons.favorite_border,color:subColor),
          ],
        ),
      ),
    );;
  }
}

