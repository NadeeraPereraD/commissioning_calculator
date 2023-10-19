// ignore_for_file: non_constant_identifier_names, invalid_use_of_visible_for_testing_member

import 'package:commissioning_calculator/screens/home_page.dart';
import 'package:commissioning_calculator/widgets/buttons.dart';
import 'package:commissioning_calculator/widgets/sized_box.dart';
import 'package:commissioning_calculator/widgets/text.dart';
import 'package:commissioning_calculator/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  TextEditingController txt_name = TextEditingController();
  TextEditingController txt_workPlace = TextEditingController();
  TextEditingController txt_designation = TextEditingController();

  static String name = '';
  static String workPlace = '';
  static String designation = '';

  late bool _counter;

  @override
  void initState() {
    super.initState();
    loadCounter();
  }

  void loadCounter() async {
    SharedPreferences.setMockInitialValues({});
    SharedPreferences pref = await SharedPreferences.getInstance();
    // print("Load Counter");
    setState(() {
      _counter = pref.getBool('counter') ?? false;
      name = pref.getString('name') ?? name;
      workPlace = pref.getString('workPlace') ?? workPlace;
      designation = pref.getString('designation') ?? designation;
    });
    // print(_counter);
  }

  void _changeCounter() async {
    SharedPreferences.setMockInitialValues({});
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      _counter = true;
      pref.setBool('counter', _counter);
      _counter = pref.getBool('counter') ?? false;
      name = txt_name.text;
      workPlace = txt_workPlace.text;
      designation = txt_designation.text;

      pref.setString('name', name);
      pref.setString('workPlace', workPlace);
      pref.setString('designation', designation);
    });
  }

  void save() {
    name = txt_name.text;
    workPlace = txt_workPlace.text;
    designation = txt_designation.text;

    if (txt_name.text != '' &&
        txt_workPlace.text != '' &&
        txt_designation.text != '') {
      _changeCounter();
      Future.delayed(const Duration(microseconds: 100), () {
        //Navigate to HomePage
        Navigator.of(context).push(MaterialPageRoute(builder: (_) {
          return const HomePage();
          //name: name, workPlace: workPlace, designation: designation,
        }));
      });
    } else {
      // print('Please filled all before click Save');
      txt_name.text = '';
      txt_workPlace.text = '';
      txt_designation.text = '';
    }
  }

  profileChecked() {
    if (_counter) {
      Navigator.of(context).push(MaterialPageRoute(builder: (_) {
        return const HomePage();
      }));
      //Navigate to HomePage
    }
  }

  @override
  Widget build(BuildContext context) {
    // double height = (MediaQuery.of(context).size.height);
    //double width = (MediaQuery.of(context).size.width);
    return Scaffold(
      body: Column(
        children: [
          //profileChecked(),
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
                  //sizedBox(35.0, 0.0),
                  SizeBox(height: 35.0, width: 0.0),
                  //sizedBox(15.0),
                  Flexible(
                      child: Row(
                    children: [
                      ProfTextField(
                          size: 20,
                          fontWeight: FontWeight.w500,
                          text: 'Your Name'),
                      //sizedBox(0.0, 15.0),
                      SizeBox(height: 0.0, width: 15.0),
                      TextFields(
                        controller: txt_name,
                        width: 265,
                        hintText: 'Enter your name',
                      ),
                    ],
                  )),
                  //sizedBox(15.0, 0.0),
                  SizeBox(height: 15.0, width: 0.0),
                  Flexible(
                      child: Row(
                    children: [
                      ProfTextField(
                          size: 20,
                          fontWeight: FontWeight.w500,
                          text: 'Work Place'),
                      //sizedBox(0.0, 15.0),
                      SizeBox(height: 0.0, width: 15.0),
                      TextFields(
                        width: 265,
                        hintText: 'Enter work place',
                        controller: txt_workPlace,
                      ),
                    ],
                  )),
                  //sizedBox(15.0, 0.0),
                  SizeBox(height: 15.0, width: 0.0),
                  Flexible(
                      child: Row(
                    children: [
                      ProfTextField(
                          size: 20,
                          fontWeight: FontWeight.w500,
                          text: 'Designation'),
                      //sizedBox(0.0, 10.0),
                      SizeBox(height: 0.0, width: 10.0),
                      TextFields(
                        width: 265,
                        hintText: 'Enter designation',
                        controller: txt_designation,
                      ),
                    ],
                  )),

                  //sizedBox(25.0, 0.0),
                  SizeBox(height: 25.0, width: 0.0),

                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0, right: 20.0),
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
                          image: const AssetImage(''),
                          onPress: save,
                        ),
                        //sizedBox(0.0, 25.0),
                        SizeBox(height: 0.0, width: 25.0),
                        Buttons(
                          backgroundColor: Colors.blue,
                          text: 'Clear',
                          textColor: Colors.white,
                          size: 25.0,
                          fontWeight: FontWeight.bold,
                          radius: 20.0,
                          width: 140,
                          height: 65,
                          image: const AssetImage(''),
                          onPress: () {},
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
