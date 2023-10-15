import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SizeBox extends StatelessWidget {
  double height;
  double width;
  SizeBox({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
