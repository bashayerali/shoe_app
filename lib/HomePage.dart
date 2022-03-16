import 'package:flutter/material.dart';
import 'shoeDetail.dart';
import 'mainDrawer.dart';
import 'womenTab.dart';
import 'menTab.dart';
import 'appRoutes.dart';
import 'constants.dart';


class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState () {
    tabController = TabController(length: 2,vsync: this);
    super.initState();
  }
  @override
  void despose(){
    tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    int index ;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(90),
            child: AppBar(
              centerTitle: true,
              iconTheme: IconThemeData(color: Color(0xff16697a)),
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
              elevation: 5,
              backgroundColor: Color(0xfff8f1f1),
              title: Center(
                  child: Text('Categories',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff16697a),
                      fontSize: 20,
                      letterSpacing: 1
                    ),
                  )
              ),
              bottom: TabBar(
                  controller: tabController,
                  indicatorWeight: 2,
                  indicatorColor: Color(0xff16697a),
                  labelPadding: EdgeInsets.fromLTRB(60,10,70,0),
                  unselectedLabelColor:  Color(0xffa2d0c1),
                  labelColor:  Color(0xff16697a) ,
                  labelStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,letterSpacing: 1),
                  tabs: [
                    Tab( text: 'WOMEN'),
                    Tab(text: 'MEN',)
                  ]
              ),
            ),
          ),
          drawer: Drawer(
            elevation: 0,
            child: MainDrawer(),
          ),
          body: TabBarView(
            controller: tabController ,
            children: [
              WomenTab(),
              MenTab()
            ],
          )
      ),
    );
  }
}



// Color mainColor =  Color(0xff16697a);
// Color subColor = Color(0xffdb6400);
//
// Widget _card (){
//
// }
//
//
// Widget _buildCard (String name, String price, String imgPath, bool added, bool isFavorite, context){
//   return Padding(
//     padding: EdgeInsets.only(top: 15,bottom: 5,left: 5, right: 5),
//     child: InkWell(
//       onTap: (){
//         Navigator.of(context).push(
//             MaterialPageRoute(builder: (context) => ShoeDetail(
//                 assetPath: imgPath,
//                 shoeeprice:price,
//                 shoename: name
//             )));
//       },
//       child: Container(
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(15),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey.withOpacity(0.3),
//                 spreadRadius:3,
//                 blurRadius: 5,
//               ),
//             ],
//             color: Colors.white
//         ),
//         child: Column(
//           children: <Widget>[
//             Padding(
//               padding: EdgeInsets.all(5),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: <Widget>[
//                   isFavorite? Icon(Icons.favorite,color:subColor):Icon(Icons.favorite_border,color:subColor)
//                 ],
//               ),
//             ),
//             Hero(
//               tag: imgPath,
//               child: Container(
//                 height: 75,
//                 width: 75,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage(imgPath),
//                     fit: BoxFit.contain,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 7),
//             Text(price,
//               style: TextStyle(
//                 color: subColor,
//                 fontSize: 14,
//               ),
//             ),
//             Text(name,
//               style:TextStyle(
//                 color: mainColor,
//                 fontSize: 14,
//               ) ,),
//             Padding(
//               padding:EdgeInsets.all(8),
//               child: Container(
//                 color: mainColor,
//                 height: 1,
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(left: 5,right: 5),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: <Widget>[
//                   if (!added)...[
//                     Icon(Icons.shopping_basket,
//                       color: mainColor, size: 12,),
//                     Text('Add to cart',
//                       style: TextStyle(
//                         fontSize: 12,
//                         color: subColor,
//                       ),)
//                   ],
//                   if (added)...[
//                     Icon (
//                       Icons.remove_circle_outline,
//                       color: mainColor,
//                       size: 12,
//                     ),
//                     Text('3',
//                       style: TextStyle(
//                           color: subColor,
//                           fontSize: 12,
//                           fontWeight: FontWeight.bold
//                       ),),
//                     Icon(Icons.add_circle_outline,
//                       color: subColor,)
//                   ]
//                 ],
//               ),
//             ),
//
//            Padding(
//              padding: EdgeInsets.only(left: 5 , right: 5),
//              child: Row(
//                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                children: <Widget>[
//                  if(!added) ... [
//                    Icon(Icons.shopping_basket)
//                  ]
//                ],
//              ),
//            ),
//           ],
//         ),
//       ),
//     ),
//   );
// // }
//
//
//
//
//
//
//
//
