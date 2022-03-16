import 'package:flutter/material.dart';
import 'shoeDetail.dart';
import 'mainDrawer.dart';
import 'womenTab.dart';
import 'menTab.dart';


class Homejustincase extends StatefulWidget {

  @override
  _HomejustincaseState createState() => _HomejustincaseState();
}

class _HomejustincaseState extends State<Homejustincase> with SingleTickerProviderStateMixin {
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
              iconTheme: IconThemeData(color: Color(0xff16697a)),
              actions: <Widget>[
                IconButton(
                  icon:Icon( Icons.search),
                  disabledColor: Colors.grey,
                  onPressed: (){},
                  color:  Color(0xff16697a),
                ),
              ],
              elevation: 5,
              backgroundColor: Color(0xfff8f1f1),
              title: Center(
                  child: Text('Home',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff16697a),
                    ),
                  )
              ),
              bottom: TabBar(
                  controller: tabController,
                  indicatorWeight: 2,
                  indicatorColor: Color(0xffa2d0c1) ,
                  labelPadding: EdgeInsets.fromLTRB(60,10,70,0),
                  unselectedLabelColor: Color(0xff16697a),
                  labelColor:  Color(0xffa2d0c1) ,
                  labelStyle: TextStyle(fontSize: 15),
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
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor:Color(0xffa2d0c1),
            backgroundColor: Color(0xfff8f1f1),
            unselectedItemColor:Color(0xff16697a) ,
            // onTap: (value) {
            //   setState(() {
            //     index = value;
            //     print(index);
            //   });
            // },
            elevation: 5,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                // title: Text('HOME'),
                 label: 'HOME',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                // title: Text('CART'),
                label: 'CART',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle),
                  // title: Text('ACCOUNT'),
                label: 'ACCOUNT',
              ),
            ],
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



Color mainColor =  Color(0xff16697a);
Color subColor = Color(0xffdb6400);

Widget _card (){

}


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
// }
