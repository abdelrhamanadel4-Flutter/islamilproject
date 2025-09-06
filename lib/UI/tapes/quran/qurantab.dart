import 'package:flutter/material.dart';
import 'package:projectt/UI/tapes/quran/serach.dart';
import 'package:projectt/UI/tapes/quran/suraitem.dart';
import 'package:projectt/ultilss/app%20assets.dart';
import 'package:projectt/ultilss/app%20routes.dart';
import 'package:projectt/ultilss/appcolors.dart';
import 'package:projectt/ultilss/appstyles.dart';

class Quran extends StatelessWidget {
  const Quran({super.key});

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
cursorColor: Appcolors.primarycolor,
            onTap: () {
              showSearch(context: context, delegate: DataSearch());
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Appcolors.primarycolor,
                  width: 2
                ),
              ),
              enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Appcolors.primarycolor
          ,width: 2

      ),              borderRadius: BorderRadius.circular(10)


              ),
              focusedBorder: OutlineInputBorder(  borderSide: BorderSide(
                  color: Appcolors.primarycolor          ,width: 2


              ),
                borderRadius: BorderRadius.circular(10)

              ),
              prefixIcon: Image.asset(AppAsstes.iconserach),
              hintText: 'Seura Name',
           hintStyle: AppStyles.bold16white,filled:true,
              fillColor: Appcolors.blackbgcolor
            ),
          ),
          SizedBox(height: height*0.02,),
          Text('Most Recently ',style:AppStyles.bold16white  ),
          SizedBox(height: height*0.01,),
          SizedBox(
            height: height*0.16,
            child: ListView.separated(separatorBuilder:(context, index) => SizedBox(width: width*0.03,),


              itemCount: 10,
              itemBuilder: (context, index) {
               return Container(
                 padding: EdgeInsets.symmetric(horizontal: width*0.04),
                  decoration: BoxDecoration(
                      color: Appcolors.primarycolor,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    children: [
                      Column(
                        spacing: 10,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Al-Anbiya',style: AppStyles.bold24black,),
                          Text('الأنبياء',style: AppStyles.bold24black,),
                          Text('112 Verses',style: AppStyles.bold14black,),
                        ],

                      ),
                      Image.asset(AppAsstes.img_most_recent)
                    ],

                  ),
                );
              },
                  scrollDirection: Axis.horizontal,

            ),
          ),
          SizedBox(height: height*0.02,),
          Text('Suras List',style:AppStyles.bold16white  ),
          SizedBox(height: height*0.02,),
          Expanded(child:ListView.separated(padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
            return InkWell( onTap:(){
Navigator.pushNamed(context, AppRoutes.QuranDetails,arguments: index);
            },child: SuraItem(index: index,));

          }, separatorBuilder: (context, index) {
            return Divider(
              color: Appcolors.whitecolor,
              endIndent:width*0.1 ,
              indent:width*0.1 ,
            );

          }, itemCount: 114))




        ],
      ),
    );
  }
}

