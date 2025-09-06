import 'package:flutter/material.dart';
import 'package:projectt/UI/tapes/radio/raidocontent.dart';
import 'package:projectt/ultilss/app%20assets.dart';
import 'package:projectt/ultilss/appcolors.dart';
import 'package:projectt/ultilss/appstyles.dart';
import 'package:toggle_switch/toggle_switch.dart';

class RadioTap extends StatelessWidget {
  const RadioTap({super.key});

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: width*0.04),
      child: Column(
        children: [
          ToggleSwitch(
            customWidths: [190.0, 190.0],
            cornerRadius: 12.0,
            activeBgColors: [[Appcolors.primarycolor], [Appcolors.primarycolor]],
            activeFgColor:Appcolors.blackcolor,
            inactiveBgColor: Appcolors.blackbgcolor,
            inactiveFgColor: Colors.white,
            totalSwitches: 2,
            animate: true,
            radiusStyle: true,
            customTextStyles: [
              TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ],
            labels: ['Radio', 'Reciters'],

            onToggle: (index) {
              print('switched to: $index');
            },
          ),
          SizedBox(height: height*0.02,),
          Expanded(child: ListView.separated(
          padding: EdgeInsets.zero
              ,
              itemBuilder: (context, index) =>RaidoContent() , separatorBuilder: (context, index) => SizedBox(height: height*0.02,), itemCount: 10))

        ],
      ),
    );
  }
}
