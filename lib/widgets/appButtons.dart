import 'package:flutter/material.dart';
import 'package:testing_new_tools/widgets/app_text.dart';

class myAppButton extends StatelessWidget {
  final Color textOrIconColor;
  final Color backGroundColor;
  final double size;
  final Color borderColor;
  String? text;
  IconData? icon;
  bool? isIcon;
  final Color textColor;
  final double circulerDegree;

   myAppButton(
      {Key? key,
        required this.textColor,
        this.isIcon,
      this.icon,
      this.text = "test",
        this.circulerDegree = 13,
      required this.borderColor,
      required this.size,
      required this.backGroundColor,
      this.textOrIconColor = Colors.black38})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5),
      width: size,
      height: size,
      decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: 1.0),
          borderRadius: BorderRadius.circular(circulerDegree),
          color: backGroundColor),
      child: isIcon! ? Center(child: Icon(icon)): Center(child: appText(text: text!,color:textColor ,)),
    );
  }
}
