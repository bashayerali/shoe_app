import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:shoe_app_two/constants.dart';

class CustomTextFormField extends StatelessWidget {
 final String hintText;
final double hinTextSize;
final IconData icon;
final Color hintTextColor;
final Color iconColor;
final Color cursorColor;
final Function onChanged;
final Function onTap;
final bool secure;


const CustomTextFormField({
  this.hintText,
  this.hinTextSize,
  this.icon,
  this.hintTextColor,
  this.iconColor,
  this.cursorColor,
  this.onChanged,
  this.onTap,
  this.secure = false
});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText:secure ,
      onChanged: onChanged,
      onTap: onTap,
    decoration: InputDecoration(
      labelText: hintText,
      labelStyle: TextStyle(fontSize: hinTextSize,
     color: hintTextColor,),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(29),
      ),
      // border: InputBorder.none,
      prefixIcon: Icon(
        icon ,
        color: iconColor,
      ),
),

);
  }
}
