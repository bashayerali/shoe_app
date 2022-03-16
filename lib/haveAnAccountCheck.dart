import 'package:flutter/material.dart';
import 'constants.dart';
class HaveAnAccountCheck extends StatelessWidget {
  final bool login ;
  final Function press;
  const HaveAnAccountCheck({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
      login ? "Don't Have An Account? " : "Already Have An Account?",
          style: TextStyle(
              color: mainColor,
              fontSize: 17
          ),
        ),
        GestureDetector(
          onTap: press,
          child: Text(login ? " Sign Up" : " Sign In",
            style: TextStyle(
                color: mainColor,
                fontWeight: FontWeight.bold,
                fontSize: 17
            ),
          ),
        ),
      ],
    );
  }
}
