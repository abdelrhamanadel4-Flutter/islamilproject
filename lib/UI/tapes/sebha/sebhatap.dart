import 'package:flutter/material.dart';
import 'package:projectt/ultilss/app%20assets.dart';
import 'package:projectt/ultilss/appcolors.dart';
import 'package:projectt/ultilss/appstyles.dart';

class Sebha extends StatefulWidget {
  const Sebha({super.key});

  @override
  State<Sebha> createState() => _SebhaState();

}

class _SebhaState extends State<Sebha> with SingleTickerProviderStateMixin {
  late Animation<double>_animation;
  late AnimationController _animationController;


  @override
  void initState() {
    // TODO: implement initState
    _animationController=AnimationController(vsync: this,duration:Duration(seconds: 2));
    _animation=Tween<double>(begin:0 ,end:1 ).animate(_animationController);
  }
   int counter=0;

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Column(
      children: [
        Text('سَبِّحِ اسْمَ رَبِّكَ الأعلى ',style: AppStyles.bold32white,),
        SizedBox(height: 10,),
        Stack(
          alignment: Alignment.center,
          children: [
            InkWell(onTap: (){
              _animationController.value==0?_animationController.forward():
                  _animationController.reverse();
              counter++;
              setState(() {

              });

            },
                child: RotationTransition(turns:_animation ,
                    child: Image.asset(AppAsstes.sebhainmai))),
            Center(
              child: Column(
                children: [
                  SizedBox(height: height*0.1,),
                  Text(changeText(),style: AppStyles.bold32white,
                  ),
                  SizedBox(height: height*0.02,),
                  Text(counter.toString(),style: AppStyles.bold32white),

                ],
              ),
            ),

          ],
        ),
        Spacer(flex: 1,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(onPressed: (){
            counter=0;
            setState(() {

            });
          }, child: Text('إعادة',style: AppStyles.bold32white,),style: ElevatedButton.styleFrom(
            backgroundColor: Appcolors.primarycolor
          ),),
        )


      ],

    );
  }
  String changeText( ){
String text='';
    int num=counter;
    if(num==0||num<=32)
      {

        text='سبحان الله';
      }
    else if(num==33||num<=65)
      {

        text='الحمدالله';
      }   else if(num==66||num<=98)
      {
         num=counter;

        text='الله أكبر';
      }   else if(num==99||num<=132)
      {

        text='لا إله إلا الله';
         changeText();
      }

return text;
  }
}
