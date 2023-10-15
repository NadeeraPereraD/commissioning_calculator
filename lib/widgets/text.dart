import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfTextField extends StatelessWidget {
  final String text;
  double size;
  final FontWeight fontWeight;
  TextDecoration? textDecoration;

  ProfTextField(
      {Key? key,
      required this.size,
      required this.fontWeight,
      required this.text,
      this.textDecoration})
      : super(key: key);

  // Widget textLabel(
  //     String details, double fontSize, dynamic fontWeight, dynamic decoration) {
  //   //this.details = details;
  //   return Text(
  //     details,
  //     style: TextStyle(
  //       fontSize: fontSize,
  //       fontWeight: fontWeight,
  //       decoration: decoration,
  //     ),
  //   );
  // }

  // Widget sizedBox(double height) {
  //   return SizedBox(
  //     height: height,
  //   );
  // }

  // Widget textField(String name) {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
  //     child: TextField(
  //       //controller: txt_name,
  //       decoration: InputDecoration(
  //         border: const OutlineInputBorder(),
  //         hintText: hintText,
  //         fillColor: Colors.white,
  //         focusColor: Colors.white,
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {

    return Text(
          text,
          style: TextStyle(
            fontSize: size,
            fontWeight: fontWeight,
            decoration: textDecoration,
          ),
        );
  }
}
