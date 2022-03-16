import 'package:flutter/material.dart';
import 'package:shoe_app_two/appRoutes.dart';
import 'package:shoe_app_two/constants.dart';
import 'customTextFormField.dart';
import 'customRoundedButton.dart';
import 'haveAnAccountCheck.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0.0,
      ),
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 120,left: 50,right: 50),
            child: Column(
              children: <Widget>[
                Text('Welcome!',style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: mainColor,
                ),),
                SizedBox(height: 5,),
                Text('Login to continue ',style: TextStyle(
                    fontSize: 25,
                  letterSpacing: 3,
                    color: mainColor.withOpacity(0.6),
                ),),
                SizedBox(height: size.height* 0.11), // 110
                CustomTextFormField(
                  secure: false,
                  onChanged: (value){},
                  hintText: 'User Name',
                  hintTextColor: mainColor,
                  hinTextSize: 20,
                  icon: Icons.person,
                  iconColor: mainColor,
                ),
                SizedBox(height: size.height* 0.04,),
                CustomTextFormField(
                  secure: true,
                  onChanged: (value){},
                  hintText: 'Password',
                  hintTextColor: mainColor,
                  hinTextSize: 20,
                  icon: Icons.lock_outline,
                  iconColor: mainColor,
                ),
                SizedBox(height: size.height* 0.06,),
                CustomRoundedButton(
                  text: 'Login',
                   press: (){
                     Navigator.pushNamed(
                         context,
                         AppRoutes.homeRoute
                     );
                   },
                ),
                SizedBox(height: size.height* 0.02,),
                HaveAnAccountCheck(
                  press: (){
                    Navigator.pushNamed(
                        context,
                        AppRoutes.signupRoute
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


}

