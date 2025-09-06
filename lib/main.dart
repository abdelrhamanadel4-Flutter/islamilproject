import 'package:flutter/material.dart';

import 'package:projectt/ultilss/app%20routes.dart';
import 'package:projectt/ultilss/apptheme.dart';

import 'UI/home/HOME SCREAN.dart';
import 'UI/home/introscrean.dart';
import 'UI/tapes/quran/q/qurandeatils_1.dart';
import 'UI/tapes/quran/qurandetails.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.introroute,
      routes: {
        AppRoutes.introroute:(context)=>IntroScreen(),
        AppRoutes.homeroute:(context)=>HomeScrean(),
        AppRoutes.QuranDetails:(context)=>QuranDetails(),
        AppRoutes.QuranDetails1:(context)=>QuranDetails1(),

      },
      theme: AppTheme.darktheme,
      themeMode: ThemeMode.dark,
    );}

}