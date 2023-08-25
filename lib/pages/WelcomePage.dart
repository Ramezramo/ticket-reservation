
import 'package:flutter/material.dart';
import 'package:testing_new_tools/widgets/app_large_text.dart';

import '../widgets/app_text.dart';
import '../widgets/responsiveButton.dart';


class Welcomepage extends StatefulWidget {
  const Welcomepage({Key? key}) : super(key: key);

  @override
  State<Welcomepage> createState() => _WelcomepageState();
}

class _WelcomepageState extends State<Welcomepage> {
  List images = [

    "img/welcome-one.png",

    "img/welcome-two.png",

    "img/welcome-three.png",

  ];




  @override
  Widget build(BuildContext context) {
    return

      Scaffold(
      body: PageView.builder(

          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_,index){
        return Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(
            image:DecorationImage(
                image: AssetImage(images[index]),
                    fit:BoxFit.cover// make photo in full screen
            ),


          ),
          child: Container(
            margin: EdgeInsets.only(top: 150,left: 20,right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    appLargeText(text: "Trips",),
                    appText(text: "Mountain",size: 30,),
                    SizedBox(height: 20,),
                    Container(
                      width: 250,
                      child: appText(text:"Mountain hikes give you an incredible sense of freedom along with endurance test",


                      ),
                    ),
                    SizedBox(height: 40,),
                    ResponsiveButton(width: 100),

                  ],
                ),
                Column(
                  children: List.generate(3, (indexDots) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 2),
                      width: 8,
                      height:index == indexDots ?  25 : 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                          color: index == indexDots ?  Color(0xFF5B67BD) : Colors.lightBlueAccent,
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),

        );
      }),
    );
  }
}
