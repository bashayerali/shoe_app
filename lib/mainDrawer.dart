import 'package:flutter/material.dart';
import 'package:shoe_app_two/constants.dart';
import 'appRoutes.dart';
Color textColor =  Color(0xff16697a);
class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Icon(Icons.person,
              color: subColor,
                size: 40,
              ),
              // backgroundImage:
              // AssetImage('images/user.png'),
            ),
            title: Text("Hi, user",style: TextStyle(color: textColor,fontWeight: FontWeight.w900, fontSize: 18),),
            subtitle: Text("user@gmail.com", style: TextStyle(color: textColor,fontWeight: FontWeight.w600,fontSize: 18),),
            trailing: IconButton(
              icon: Icon(Icons.arrow_right,color: textColor,),
              onPressed: (){},
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 1,
          ),
          DrawerItem(
            title: 'Cart',
            icon: Icons.shopping_cart,
            onTap: (){
              Navigator.pushNamed(
                context,
                AppRoutes.cartRoute // لم تزبط
            );
              },
          ),
          DrawerItem(
            title: 'Whish List',
            icon: Icons.favorite,
          ),
          DrawerItem(
            title: 'Sales',
            icon: Icons.local_offer,
          ),
          Divider(
            thickness: 1,
          ),
          DrawerItem(
            title: 'Dark mode',
            icon: Icons.brightness_medium,
          ),
          DrawerItem(
            title: 'Setting',
            icon: Icons.settings,
          ),
        ],
      ),
    );
  }
}
// Widget  DrawerItem ({String title}) {
//   return Container(
//     padding:EdgeInsets.only(left: 8),
//     height: 60,
//     child: ListTile(
//       onTap: (){},
//       title: Text(title,
//         style: TextStyle(
//           color: textColor,
//           fontSize: 18
//         ),),
//     ),
//   );
// }
class DrawerItem extends StatelessWidget {
  final String title;
  final Function onTap;
  final IconData icon;
  const DrawerItem({Key key, this.title, this.onTap, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding:EdgeInsets.only(left: 8),
      height: size.height * 0.06,
      child: ListTile(
        leading: Icon(icon,
        color: subColor,
          size: 22,
        ),
        onTap: onTap,
        title: Text(title,
          style: TextStyle(
              color: textColor,
              fontSize: size.height * 0.019,
          ),),
      ),
    );;
  }
}
