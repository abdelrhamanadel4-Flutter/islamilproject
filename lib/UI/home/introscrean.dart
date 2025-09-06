import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:projectt/ultilss/app%20routes.dart';
import 'package:projectt/ultilss/appcolors.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      body: Column(
        children: [
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Image.asset('assets/images/as.png'),
          ),

          Expanded(

            child: IntroductionScreen(
              globalBackgroundColor: Colors.transparent,
              pages: [
                PageViewModel(
                  title: 'Welcome To Islmi App',
                  body: ' ',
              image: Image.asset(
                'assets/images/intro1.png',
              ),
                  decoration: PageDecoration(
                    titleTextStyle: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Appcolors.primarycolor,

                    ),pageColor: Colors.transparent,
                    bodyTextStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                      imageFlex: 3

                  ),
                ),
                PageViewModel(
                  title: 'Welcome To Islami',
                  body:"We Are Very Excited To Have You In Our Community",
                  image: Image.asset(
                    'assets/images/intro2.png',
                  ),
                  decoration: getDecration(),
                ),
                PageViewModel(
                  title: 'Reading the Quran',
                  body: 'Read, and your Lord is the Most Generous',
                  image: Image.asset(
                    'assets/images/intro3.png',
                  ),
                  decoration:getDecration(),
                ),
                PageViewModel(
                  title: 'Bearish',
                  body: 'Praise the name of your Lord, the Most High',
                  image: Image.asset(
                    'assets/images/intro4.png',
                  ),
                  decoration: getDecration(),
                ),
                PageViewModel(
                  title: 'Holy Quran Radio',
                  body: 'You can listen to the Holy Quran Radio through the application for free and easily',
                  image: Image.asset(
                    'assets/images/intro5.png',
                  ),
                  decoration: getDecration(),
                ),

              ],
              next: Text('Next',style: TextStyle(
                color: Appcolors.primarycolor,fontSize: 16,fontWeight: FontWeight.bold
              ),),
              done: Text('Finsih', style: TextStyle(color:Appcolors.primarycolor,fontSize: 16,fontWeight: FontWeight.bold)),
              onDone: () {
                Navigator.of(context).pushNamed(AppRoutes.homeroute);
              },
              showSkipButton: true,
              skip: Text('Back', style: TextStyle(color: Appcolors.primarycolor,fontSize: 16,fontWeight: FontWeight.bold)),
              onSkip: () {
              },
              dotsDecorator: DotsDecorator(
                size: Size(10.0, 10.0),
                color: Colors.white.withOpacity(0.5),
                activeSize: Size(22.0, 10.0),
                activeColor: Appcolors.primarycolor,
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),

                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  PageDecoration getDecration(){
    return PageDecoration(
  titleTextStyle: TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  color: Appcolors.primarycolor,

  ),pageColor: Colors.transparent,
  bodyTextStyle: TextStyle(
  fontSize: 20,
  color: Appcolors.primarycolor,
  ),
  imageFlex: 3

  );
      }
}