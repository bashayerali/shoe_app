import 'package:flutter/material.dart';
import 'package:shoe_app_two/appRoutes.dart';
import 'menProducts.dart';
import 'womenProducts.dart';
import 'shoeDetail.dart';
import 'check.dart';


class ProuductsPage extends StatefulWidget {
  List list;
  String productType;
  ProuductsPage({ this.list ,this.productType}){
    if (list ==  menBootsProductsList)
      productType = "Boots";
    else if (list ==  menSneakersProductsList ||
        list ==  womenSneakersProductsList )
      productType = "SNEAKERS";
    else if (list ==  menSandalsProductsList)
      productType = "SANDALS";
    else if (list == womenHeelsProductsList)
      productType = "HEELS";
    else
      productType = "FLATS";
  }

  @override
  _ProuductsPageState createState() => _ProuductsPageState();
}

class _ProuductsPageState extends State<ProuductsPage> {
  // bool isFavorite ;
bool isFav = false ;
  Color mainColor =  Color(0xff16697a);

  Color subColor = Color(0xffdb6400);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height * 0.4 - 50;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(size.height * 0.080),
          child: AppBar(
            centerTitle: true,
            iconTheme: IconThemeData(color: Color(0xff16697a)),
            elevation: 5,
            backgroundColor: Color(0xfff8f1f1),
            title:Text(widget.productType,
                 textAlign: TextAlign.center,
                 style: TextStyle(
                 color: Color(0xff16697a),
                 ),
                ),
            actions: <Widget>[
              IconButton(
                icon:Icon( Icons.search),
                disabledColor: Colors.grey,
                onPressed: (){},
                color:  Color(0xff16697a),
              ),
              IconButton(
                icon:Icon( Icons.shopping_cart),
                disabledColor: Colors.grey,
                onPressed: (){
                  Navigator.pushNamed(
                      context,
                      AppRoutes.cartRoute
                  );
                },
                color:  Color(0xff16697a),
              ),
            ],
           )
      ),
      body: GridView.count(
        crossAxisSpacing: 7.0,
        mainAxisSpacing: 15.0,
        childAspectRatio: 0.7,
        crossAxisCount: 2,
        children: List.generate(widget.list.length, (index) {

        return  _Card(
              widget.list[index].productName,
              widget.list[index].productPrice,
              widget.list[index].productImage,
              widget.list[index].isFave,
              // false,
              widget.list[index].isFave,
              context,
              widget.list[index].productDetails
          );
          // return Padding(
          //   padding: EdgeInsets.all(1),
          //   child: InkWell(
          //     onTap: (){
          //       Navigator.of(context).push(MaterialPageRoute(
          //         builder: (context){
          //           return ShoeDetail(
          //             productImage: widget.list[index].productImage,
          //            productName: widget.list[index].productName,
          //             productPrice:  widget.list[index].productPrice ,
          //             productDetails:  widget.list[index].productDetails,
          //           );
          //         }
          //       ));
          //     },
          //     child: Container(
          //       margin: EdgeInsets.all(3),
          //       decoration: BoxDecoration(
          //         color: Colors.white,
          //         borderRadius: BorderRadius.circular(8),
          //         boxShadow: [
          //           BoxShadow(
          //               color: Colors.grey.withOpacity(0.2),
          //               blurRadius: 2,
          //               spreadRadius: 2
          //           ),
          //         ],
          //       ),
          //       child: Column(
          //         children: <Widget>[
          //           FavoriteCheck(
          //             isFavorite: isFav,
          //             press: (){
          //               setState(() {
          //               isFav = !isFav;
          //               });
          //             },
          //           ),
          //           Hero(
          //             tag: 'Shoe$index',
          //             child: Container(
          //               height:size.height * 0.170,
          //               width: size.height * 0.140,
          //               decoration: BoxDecoration(
          //                 image: DecorationImage(
          //                     image: AssetImage(widget.list[index].productImage),
          //                     fit: BoxFit.contain
          //                 ),
          //               ),
          //             ),
          //           ),
          //           SizedBox(height:size.height * 0.01,),
          //           Text(widget.list[index].productName,
          //             style: TextStyle(
          //                 fontWeight:FontWeight.bold ,color:mainColor ),),
          //           Text(widget.list[index].productPrice,
          //             style: TextStyle(
          //                 fontWeight:FontWeight.bold ,color:subColor ),),
          //
          //           OutlineButton(
          //             splashColor: subColor,
          //             child: Text ('Add to Cart',
          //             style: TextStyle(
          //               color: subColor
          //             ),),
          //             onPressed: (){
          //             },
          //             shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
          //             // StadiumBorder(),
          //             borderSide: BorderSide(color: subColor, width: 2),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // );
        }),
      ),
    );
  }
}

Widget _Card(String name, String price, String imgPath, bool added,
    bool isFavorite, context, String detail) {
  Size size1 = MediaQuery.of(context).size;
  return Padding(
    padding: EdgeInsets.all(1),
    child: InkWell(
      onTap: (){

        Navigator.of(context).push(MaterialPageRoute(
            builder: (context){
              return ShoeDetail(
                productImage:imgPath,
                productName:name,
                productPrice:price,
                productDetails: detail,
                isFave: isFavorite,
                // productDetails:  widget.list[index].productDetails,
              );
            }
        ));
      },
      child: Container(
        margin: EdgeInsets.all(3),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 2,
                spreadRadius: 2
            ),
          ],
        ),
        child: Column(
          children: <Widget>[
            check(isFavorite),
            // FavoriteCheck(
            //   isFavorite: isFavorite,
            //      press: (){
            //     setState(() {
            //       isFavorite = !isFavorite;
            //     });
            //   },
            // ),
            Hero(
              tag: imgPath,
              child: Container(
                height:size1.height * 0.170,
                width: size1.height * 0.140,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imgPath),
                      fit: BoxFit.contain
                  ),
                ),
              ),
            ),
            SizedBox(height:size1.height * 0.01,),
            Text(name,
              style: TextStyle(
                  fontWeight:FontWeight.bold ,color:mainColor ),),
            Text(price,
              style: TextStyle(
                  fontWeight:FontWeight.bold ,color:subColor ),),

            OutlineButton(
              splashColor: subColor,
              child: Text ('Add to Cart',
                style: TextStyle(
                    color: subColor
                ),),
              onPressed: (){
              },
              shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
              // StadiumBorder(),
              borderSide: BorderSide(color: subColor, width: 2),
            ),
          ],
        ),
      ),
    ),
  );

}



