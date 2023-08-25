
import 'package:flutter/material.dart';

class appLargeText extends StatelessWidget {

  double size ;
  final String text;
  final Color color;
  appLargeText({Key? key,this.size = 30,required this.text, this.color = Colors.black54}):super (key: key);






  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold
      ),
    );
  }
}
