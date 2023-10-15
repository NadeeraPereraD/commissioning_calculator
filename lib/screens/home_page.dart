import 'package:commissioning_calculator/widgets/buttons.dart';
import 'package:commissioning_calculator/widgets/sized_box.dart';
import 'package:commissioning_calculator/widgets/text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 2,
            child: Container(
              margin: const EdgeInsets.only(top: 40.0),
              //padding: const EdgeInsets.all(0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProfTextField(
                          size: 20,
                          fontWeight: FontWeight.w700,
                          text: 'Good Morning!'),
                      SizeBox(height: 5.0, width: 0.0),
                      ProfTextField(
                          size: 17,
                          fontWeight: FontWeight.w600,
                          text: 'Your Name'),
                      SizeBox(height: 5.0, width: 0.0),
                      ProfTextField(
                          size: 15,
                          fontWeight: FontWeight.w600,
                          text: 'Work Place'),
                      SizeBox(height: 5.0, width: 0.0),
                      ProfTextField(
                          size: 10,
                          fontWeight: FontWeight.w600,
                          text: 'Designation'),
                    ],
                  ),

                  // ProfTextField(
                  //       size: 20,
                  //       fontWeight: FontWeight.w700,
                  //       text: 'Good Morning!'),
                  const Image(
                    image: AssetImage('assets/images/logo/logo.png'),
                    height: 90.0,
                    width: 100.0,
                  ),
                ],
              ),
            ),
          ),
          SizeBox(height: 40, width: 0),
          Flexible(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ProfTextField(
                    size: 25.0, fontWeight: FontWeight.w600, text: 'Date'),
                ProfTextField(
                    size: 25.0, fontWeight: FontWeight.w600, text: 'Date'),
              ],
            ),
          ),
          SizeBox(height: 20, width: 0),
          Flexible(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ProfTextField(
                    size: 25.0, fontWeight: FontWeight.w600, text: 'Time'),
                ProfTextField(
                    size: 25.0, fontWeight: FontWeight.w600, text: 'Time'),
              ],
            ),
          ),
          SizeBox(height: 50, width: 0),
          Flexible(
            flex: 1,
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Buttons(
                  backgroundColor: Colors.grey,
                  text: 'New Entry',
                  textColor: Colors.black,
                  size: 17,
                  fontWeight: FontWeight.bold,
                  radius: 15,
                  width: 200,
                  height: 75,
                  isImage: true,
                  imgHeight: 90,
                  imgWidth: 100,
                  image: const AssetImage('assets/images/button_images/new_entry.png'),
                ),
                Buttons(
                  backgroundColor: Colors.grey,
                  text: 'Past Entry',
                  textColor: Colors.black,
                  size: 17,
                  fontWeight: FontWeight.bold,
                  radius: 15,
                  width: 200,
                  height: 75,
                  isImage: true,
                  imgHeight: 90,
                  imgWidth: 100,
                  image: const AssetImage('assets/images/button_images/past_entry.png'),
                ),
              ],
            ),
          ),
          SizeBox(height: 20, width: 0),
          Flexible(
            flex: 1,
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Buttons(
                  backgroundColor: Colors.grey,
                  text: 'Services',
                  textColor: Colors.black,
                  size: 17,
                  fontWeight: FontWeight.bold,
                  radius: 15,
                  width: 200,
                  height: 75,
                  isImage: true,
                  imgHeight: 90,
                  imgWidth: 100,
                  image: const AssetImage('assets/images/button_images/services_btn.png'),
                ),
                Buttons(
                  backgroundColor: Colors.grey,
                  text: 'Read Data',
                  textColor: Colors.black,
                  size: 17,
                  fontWeight: FontWeight.bold,
                  radius: 15,
                  width: 200,
                  height: 75,
                  isImage: true,
                  imgHeight: 90,
                  imgWidth: 100,
                  image: const AssetImage('assets/images/button_images/read_data.png'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
