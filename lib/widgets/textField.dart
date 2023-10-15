// ignore: file_names
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFields extends StatelessWidget {
  final String hintText;
  double width;
  TextFields({super.key, required this.hintText, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextField(
        //controller: txt_name,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: hintText,
          fillColor: Colors.white,
          focusColor: Colors.white,
        ),
      ),
    );
  }
}
