
import 'package:flutter/material.dart';

class appText extends StatelessWidget {

  double size ;
  final String text;
  final Color color;
  appText({Key? key,this.size = 16,required this.text, this.color = Colors.black45}):super (key: key);






  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: size,

      ),
    );
  }
}
