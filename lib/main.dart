import 'package:flutter/material.dart';
import 'package:shoe_app_two/HomePage.dart';
import 'package:shoe_app_two/accountPage.dart';
import 'package:shoe_app_two/homejustincase.dart';
import 'package:shoe_app_two/productsPages.dart';
import 'package:shoe_app_two/signUpPage.dart';
import 'cartPage.dart';
import 'home.dart';
import 'loginPage.dart';
import 'appRoutes.dart';
import 'shoeDetail.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.loginRoute,
      onGenerateRoute: (route) => getRoute(route),
      home:LoginPage(),  // Home()
    );
  }
}
Route getRoute(RouteSettings settings) {
  switch (settings.name){
    case AppRoutes.homeRoute: return buildroute(HomePage(), settings: settings);
    case AppRoutes.loginRoute: return buildroute(LoginPage(), settings: settings);
    case AppRoutes.signupRoute: return buildroute(SignUpPage(), settings: settings);
    case AppRoutes.productsRoute: return buildroute(ProuductsPage(), settings: settings);
    case AppRoutes.cartRoute: return buildroute(CartPage(), settings: settings);
    case AppRoutes.accountrRoute: return buildroute(AccountPage(), settings: settings);
    case AppRoutes.shoeDetailRoute : return buildroute(ShoeDetail(), settings: settings);
    default : return null;
  }
}

MaterialPageRoute buildroute(Widget child, {RouteSettings settings} ) {
  return MaterialPageRoute (
      settings: settings,
      builder: (BuildContext context ) => child
  );
}

