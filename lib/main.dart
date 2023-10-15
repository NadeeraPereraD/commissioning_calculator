import 'package:commissioning_calculator/widgets/buttons.dart';
import 'package:commissioning_calculator/widgets/text.dart';
import 'package:commissioning_calculator/widgets/textField.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Commissioning Calculator',
      home: SignIn(),
    );
  }
}

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  // TextEditingController txt_name = TextEditingController();

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

  Widget sizedBox(double height, double width) {
    return SizedBox(
      height: height,
      width: width,
    );
  }

  // Widget textField(String name) {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
  //     child: TextField(
  //       controller: txt_name,
  //       decoration: InputDecoration(
  //         border: const OutlineInputBorder(),
  //         hintText: name,
  //         fillColor: Colors.white,
  //         focusColor: Colors.white,
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    // double height = (MediaQuery.of(context).size.height);
    //double width = (MediaQuery.of(context).size.width);
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.white,
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[400],
              ),
              //color: Colors.grey[400],
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 20.0, top: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfTextField(
                      text: 'Profile Details',
                      fontWeight: FontWeight.bold,
                      size: 35,
                      textDecoration: TextDecoration.underline,
                     ),
                  sizedBox(35.0, 0.0),                  
                     //sizedBox(15.0),
                    Flexible(
                      child: Row(
                        children: [
                          ProfTextField(size: 20, fontWeight: FontWeight.w500, text: 'Your Name'),
                          sizedBox(0.0, 15.0),
                          TextFields(width: 265, hintText: 'Enter your name'),
                        ],

                     )),
                     sizedBox(15.0, 0.0),
                     Flexible(
                      child: Row(
                        children: [
                          ProfTextField(size: 20, fontWeight: FontWeight.w500, text: 'Work Place'),
                          sizedBox(0.0, 15.0),
                          TextFields(width: 265, hintText: 'Enter work place'),
                        ],

                     )),
                     sizedBox(15.0, 0.0),
                     Flexible(
                      child: Row(
                        children: [
                          ProfTextField(size: 20, fontWeight: FontWeight.w500, text: 'Designation'),
                          sizedBox(0.0, 10.0),
                          TextFields(width: 265, hintText: 'Enter designation'),
                        ],

                     )),

                     sizedBox(25.0, 0.0),
                    
                     Padding(
                       padding: const EdgeInsets.only(bottom: 16.0,right: 20.0),
                       child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           Buttons(
                            backgroundColor: Colors.blue, 
                            text: 'Save', 
                            textColor: Colors.white, 
                            size: 25.0, 
                            fontWeight: FontWeight.bold,
                            radius: 20.0,
                            width: 140,
                            height: 65,
                            ),
                            sizedBox(0.0, 25.0),
                            Buttons(
                            backgroundColor: Colors.blue, 
                            text: 'Clear', 
                            textColor: Colors.white, 
                            size: 25.0, 
                            fontWeight: FontWeight.bold,
                            radius: 20.0,
                            width: 140,
                            height: 65,
                            ),
                         ],
                       ),
                     ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
