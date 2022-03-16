import 'package:flutter/material.dart';
import 'package:shoe_app_two/appRoutes.dart';
import 'constants.dart';
import 'customRoundedButton.dart';
import 'customTextFormField.dart';
import 'haveAnAccountCheck.dart';
import 'loginPage.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key key}) : super(key: key);

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
                Text('Creat Account',style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: mainColor,
                ),),
                // SizedBox(height: 5,),
                // Text('Login to continue ',style: TextStyle(
                //   fontSize: 25,
                //   letterSpacing: 3,
                //   color: mainColor.withOpacity(0.6),
                // ),),
                SizedBox(height: size.height* 0.06), // 110
                CustomTextFormField(
                  onChanged: (value){},
                  hintText: 'User Name',
                  hintTextColor: mainColor,
                  hinTextSize: 20,
                  icon: Icons.person,
                  iconColor: mainColor,
                ),
                SizedBox(height: size.height* 0.02,),
                CustomTextFormField(
                  onChanged: (value){},
                  hintText: 'Email',
                  hintTextColor: mainColor,
                  hinTextSize: 20,
                  icon: Icons.alternate_email,
                  iconColor: mainColor,
                ),
                SizedBox(height: size.height* 0.02,),
                CustomTextFormField(
                  onChanged: (value){},
                  hintText: 'Mobile',
                  hintTextColor: mainColor,
                  hinTextSize: 20,
                  icon: Icons.mobile_screen_share,
                  iconColor: mainColor,
                ),
                SizedBox(height: size.height* 0.02,),
                CustomTextFormField(
                  onChanged: (value){},
                  hintText: 'Password',
                  hintTextColor: mainColor,
                  hinTextSize: 20,
                  icon: Icons.lock_outline,
                  iconColor: mainColor,
                ),
                SizedBox(height: size.height* 0.04,),
                CustomRoundedButton(
                  text: 'SignUp',
                  press: (){

                  },
                ),
                SizedBox(height: size.height* 0.02,),
                HaveAnAccountCheck(
                  login: false,
                  press: (){
                    Navigator.pushNamed(
                        context,
                        AppRoutes.loginRoute
                    );
                  }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


