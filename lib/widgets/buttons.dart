import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Buttons extends StatelessWidget {
  final Color backgroundColor;
  final String text;
  final Color textColor;
  double size;
  final FontWeight fontWeight;
  double radius;
  double width;
  double height;

  Buttons({
    super.key,
    required this.backgroundColor,
    required this.text,
    required this.textColor,
    required this.size,
    required this.fontWeight,
    required this.radius,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
        minimumSize: Size(width, height),
      ),
      // style: ButtonStyle(
      //   //backgroundColor: Colors.blue,
      //   shape: MaterialStateProperty.all(
      //     RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(25.0),
      //       side: const BorderSide(color: Colors.blue),
      //     ),
      //   ),

      // ),

      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: size,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
