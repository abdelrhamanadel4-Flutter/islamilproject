import 'package:flutter/material.dart';
import 'package:projectt/ultilss/appcolors.dart';
import 'package:projectt/ultilss/appstyles.dart';

class HadtihStyle extends StatelessWidget {
  HadtihStyle({super.key,required this.contant,});
  String contant;
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: width*0.02,),
      child: Text( contant,style:AppStyles.bold20primary,
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
      ),
    );
  }
}
