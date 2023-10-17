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
  bool? isImage;
  double? imgHeight;
  double? imgWidth;
  AssetImage image;
  final Function() onPress;
  IconData? icon;
  bool? isIcon;
  IconData? iconColor;

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
    this.isImage = false,
    this.imgHeight,
    this.imgWidth,
    required this.image,
    required this.onPress,
    this.icon,
    this.isIcon = false,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return isImage == isIcon
        ? TextButton(
            onPressed: onPress,
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
          )
        : isImage == true
            ? TextButton(
                onPressed: onPress,
                style: TextButton.styleFrom(
                  backgroundColor: backgroundColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(radius),
                  ),
                  minimumSize: Size(width, height),
                ),
                child: Row(
                  children: [
                    Ink.image(
                      width: imgWidth,
                      height: imgHeight,
                      image: image,
                    ),
                    Text(
                      text,
                      style: TextStyle(
                        color: textColor,
                        fontSize: size,
                        fontWeight: fontWeight,
                      ),
                    ),
                  ],
                ),
              )
            : TextButton(
                onPressed: onPress,
                style: TextButton.styleFrom(
                  backgroundColor: backgroundColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(radius),
                  ),
                  minimumSize: Size(width, height),
                ),
                child: Row(
                  children: [
                    // Ink.image(
                    //   width: imgWidth,
                    //   height: imgHeight,
                    //   image: image,
                    // ),
                    Icon(iconColor),
                    Icon(icon),
                    Text(
                      text,
                      style: TextStyle(
                        color: textColor,
                        fontSize: size,
                        fontWeight: fontWeight,
                      ),
                    ),
                  ],
                ),
              );
  }
}
