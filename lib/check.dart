import 'package:flutter/material.dart';

class check extends StatefulWidget {
  List list;
  bool isFavorite;
  check(
      this.isFavorite

      );


  @override
  _checkState createState() => _checkState();
}

class _checkState extends State<check> {



  @override
  Widget build(BuildContext context) {
    Color mainColor =  Color(0xff16697a);
    Color subColor = Color(0xffdb6400);
    return InkWell(
      onTap: (){
        setState(() {

          widget.isFavorite = !widget.isFavorite;
          print( widget.isFavorite);
        });
      },
      splashColor: subColor,
      child: Padding(
        padding: const EdgeInsets.only(right: 6, top: 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            widget.isFavorite? Icon(Icons.favorite,color:subColor)
                :Icon(Icons.favorite_border,color:subColor),
          ],
        ),
      ),
    );;
  }
}
