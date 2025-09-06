import 'package:flutter/material.dart';
import 'package:projectt/ultilss/appcolors.dart';
import 'package:projectt/ultilss/appstyles.dart';

class VeresStyle extends StatelessWidget {
   VeresStyle({super.key,required this.contant,required this.index});
  String contant;
  int index;
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:width*0.04),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: BoxBorder.all(color: Appcolors.primarycolor,width: 2)
        ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: height*0.01),

            child: Text('[${index+1}] $contant',style: AppStyles.bold20primary,
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,),



          )),
    );
  }
}
