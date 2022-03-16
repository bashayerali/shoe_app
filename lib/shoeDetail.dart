


import 'package:flutter/material.dart';
import 'package:shoe_app_two/appRoutes.dart';
import 'package:shoe_app_two/constants.dart';
import 'sizes.dart';
import 'check.dart';

// ***** things have to change {sizes, similar }


Color mainColor =  Color(0xff16697a);
Color subColor = Color(0xffdb6400);
class ShoeDetail extends StatelessWidget {
  final String productImage;
  final String productName;
  final String productPrice;
  final String productDetails;
  final bool isFave;
  const ShoeDetail({Key key,
    this.productImage,
    this.productName,
    this.productPrice,
    this.productDetails,
    this.isFave
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          backgroundColor: subColor,
          child: Icon(Icons.shopping_cart,
          color: Colors.white,
          ),
          foregroundColor: subColor,

        ),
        backgroundColor: backgroundColor,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(size.height * 0.080),
            child: AppBar(
              actions: <Widget>[
                check(isFave),
              ],
              centerTitle: true,
              iconTheme: IconThemeData(color: Color(0xff16697a)),
              elevation: 5,
              backgroundColor: Color(0xfff8f1f1),
              title:Text('Detail',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff16697a),
                ),
              ),
            ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(productImage),
                  ),
                ),
                width: size.width,
                height: size.height * 0.35,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(productName,
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        color: mainColor
                      ),),
                      Text(productPrice,
                          style: TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                            color: mainColor
                          )),
                    ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23, top: 30),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('Available Sizes',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: mainColor
                    ),
                  ),
                ),
              ),
              SizedBox( height: size.height * 0.02),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Sizes(text: '37',isSelected: false,),
                    Sizes(text: '38',isSelected: false,),
                    Sizes(text: '39',),
                  ],
                ),
              ),
              Padding(
                padding:const EdgeInsets.only(left: 10, top: 10),
                child: ListTile(
                  subtitle: Text(productDetails,
                  style:  TextStyle(
                      fontSize: 16,
                      color: subColor
                  ),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text("Description",
                    style:  TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: mainColor
                    ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23, top: 30),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Similar Products",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: mainColor
                    ),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 23, top: 30),
              //   child: Align(
              //     alignment: Alignment.topLeft,
              //     child: Text('Description',
              //       style: TextStyle(
              //           fontSize: 22,
              //           fontWeight: FontWeight.w500,
              //           color: mainColor
              //       ),
              //     ),
              //   ),
              // ),

            ],

          ),
        ),
      ),
    );
  }
}










// Color mainColor =  Color(0xff16697a);
// Color subColor = Color(0xffdb6400);
// class ShoeDetail extends StatelessWidget {
//   final assetPath, shoeeprice, shoename;
//
//   const ShoeDetail({Key key, this.assetPath, this.shoeeprice, this.shoename}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         centerTitle: true,
//         leading: IconButton(
//             icon: Icon(Icons.arrow_back,color: subColor,),
//             onPressed: (){
//               Navigator.of(context).pop();
//             },
//         ),
//         title: Text('Pickup',
//         style: TextStyle(
//           fontSize: 20,
//           color: subColor,
//         ),),
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(Icons.notifications_none,
//             color: subColor,
//             ),
//             onPressed: (){},
//           ),
//         ],
//       ),
//       body: ListView(
//         children: <Widget>[
//           SizedBox(height: 15,),
//           Padding(
//               padding: EdgeInsets.only(left: 20),
//             child: Text('Shoe',
//             style: TextStyle(
//               fontSize: 42,
//               color: subColor,
//             ),
//             ),
//           ),
//           SizedBox(height: 15,),
//           Hero(
//               tag: assetPath,
//               child: Image.asset(assetPath,
//               height: 150,
//               width: 100,
//               fit: BoxFit.contain,),
//           ),
//           SizedBox(height: 20,),
//           Center(
//            child: Text(shoeeprice,
//            style: TextStyle(
//              fontSize: 22,
//              color: subColor,
//            ),),
//           ),
//           SizedBox(height: 10,),
//           Center(
//             child: Text(shoename,
//               style: TextStyle(
//                 fontSize: 24,
//                 color: subColor,
//               ),),
//           ),
//           SizedBox(height: 20,),
//           Center(
//             child: Container(
//               width: MediaQuery.of(context).size.width - 50,
//               child: Text('Elegant Shoes',textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontSize: 16,
//                   color: subColor,
//                 ),
//                 ),
//             ),
//           ),
//           SizedBox(height: 20,),
//           Center(
//             child: Container(
//               width: MediaQuery.of(context).size.width - 90,
//               height: 50,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(25),
//                 color: subColor,
//               ),
//               child: Center(
//                 child: Text('Add to cart',style: TextStyle(
//                   fontSize: 14,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                 ),),
//               ),
//             ),
//
//           ),
//         ],
//       ),
//     );
//   }
//
//   }