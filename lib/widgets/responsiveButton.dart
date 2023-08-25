
import 'package:flutter/material.dart';

class ResponsiveButton extends StatelessWidget {
  bool isResponsive ;
  double width;


  ResponsiveButton({Key? key,required this.width,this.isResponsive = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width:isResponsive? double.maxFinite:width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFF5B67BD)
        ),
        
        child: 
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("img/button-one.png"),
          ],
        ),
      ),
    );
  }
}
