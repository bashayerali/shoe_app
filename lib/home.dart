import 'package:flutter/material.dart';
import 'shoeDetail.dart';
import 'mainDrawer.dart';
import 'womenTab.dart';
import 'menTab.dart';
import 'package:shoe_app_two/HomePage.dart';


class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
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
              elevation: 5 ,
              backgroundColor: Color(0xfff8f1f1),
              title: Center(
                  child: Text('SHOE',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff16697a),
                    ),
                  )
              ),

            ),
          ),
          drawer: Drawer(
            elevation: 0,
            child: MainDrawer(),
          ),

          body:null,
        ),
      );
  }
}








