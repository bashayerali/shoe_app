import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget {
 final String title;
  const CustomAppBar( {
    Key key,
    this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  PreferredSize(
      preferredSize: Size.fromHeight(90),
      child: AppBar(
        iconTheme: IconThemeData(color: Color(0xff16697a)),
        actions: <Widget>[
          IconButton(
            icon:Icon( Icons.search),
            disabledColor: Colors.grey,
            // onPressed: (){},
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
        // bottom: TabBar(
        //     controller: tabController,
        //     indicatorWeight: 2,
        //     indicatorColor: Color(0xffa2d0c1) ,
        //     labelPadding: EdgeInsets.fromLTRB(60,10,70,0),
        //     unselectedLabelColor: Color(0xff16697a),
        //     labelColor:  Color(0xffa2d0c1) ,
        //     labelStyle: TextStyle(fontSize: 15),
        //     tabs: [
        //       Tab( text: 'WOMEN'),
        //       Tab(text: 'MEN',)
        //     ]
        // ),
      ),
    );
  }
}
