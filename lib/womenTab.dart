import 'package:flutter/material.dart';
import 'womenProducts.dart';
import 'productsPages.dart';


class WomenTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height * 0.4 - 50;
    return Scaffold(
       body: SingleChildScrollView( // when scroll to end its come back
          physics: BouncingScrollPhysics(),
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: FittedBox(
              fit: BoxFit.fill,
              alignment: Alignment.topCenter,
              child: Column(
                children: <Widget>[
                  window ('images/womenHeel.jpg',height,width,ProuductsPage(list: womenHeelsProductsList),context),
                  window ('images/womenFlat2.jpg',height,width,ProuductsPage(list: womenFlatsProductsList),context),
                  window ('images/womenSneaker2.jpg',height,width,ProuductsPage(list: womenSneakersProductsList),context),
                ],
              ),
            ),
          )
      ),

    );
  }
}

Widget window (String image , double height, double width,Widget page,BuildContext context) {
  return
    InkWell(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => page
          ),
        );
      },
      child:  Container(
          height: height,
          width: width,
          margin: EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              )
          ),
    ),
  );
}