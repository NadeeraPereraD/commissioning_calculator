// ignore_for_file: unused_element, must_be_immutable
import 'dart:async';
import 'package:commissioning_calculator/screens/new_entry.dart';
import 'package:commissioning_calculator/screens/past_entry.dart';
import 'package:commissioning_calculator/screens/read_data.dart';
import 'package:commissioning_calculator/screens/services.dart';
import 'package:commissioning_calculator/widgets/buttons.dart';
import 'package:commissioning_calculator/widgets/sized_box.dart';
import 'package:commissioning_calculator/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var dateTime = DateTime.now();
  String _timeString = '';
  String _dateString = '';

  String name = '';
  String workPlace = '';
  String designation = ''; 

  void _loadCounter() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      name = pref.getString('name') ?? name;
      workPlace = pref.getString('workPlace') ?? workPlace;
      designation = pref.getString('designation') ?? designation;
    });
  }

  @override
  void initState() {
    _loadCounter();
    _timeString = _formatDateTime(DateTime.now());
    _dateString = _formatDate(DateTime.now());
    Timer.periodic(const Duration(seconds: 1), (Timer t) => _getTime());
    super.initState();
  }

  void _getTime() {
    final DateTime now = DateTime.now();
    final String formattedDateTime = _formatDateTime(now);
    final String formattedDate = _formatDate(now);

    setState(() {
      _timeString = formattedDateTime;
      _dateString = formattedDate;
    });
  }

  String _formatDateTime(DateTime dateTime) {
    return DateFormat('hh:mm:ss').format(dateTime);
  }

  String _formatDate(DateTime dateTime) {
    return DateFormat('dd/MM/yyyy').format(dateTime);
  }

  String status = 'Good Morning';

  getStatus() {
    if (dateTime.hour >= 12 && dateTime.hour < 17) {
      setState(() {
        status = 'Good Afternoon';
      });
    } else if (dateTime.hour >= 17) {
      setState(() {
        status = 'Good Evening';
      });
    } else {
      setState(() {
        status = 'Good Morning';
      });
    }
  }

  void newEntry() {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return const NewEntry();
    }));
  }

  void pastEntry() {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return const PastEntry();
    }));
  }

  void services() {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return const Services();
    }));
  }

  void readData() {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return const ReadData();
    }));
  }

  @override
  Widget build(BuildContext context) {
    getStatus();
    //getProfile();
    return Scaffold(
      body: Column(
        children: [
          //getStatus(),
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
                          size: 20, fontWeight: FontWeight.w700, text: status),
                      SizeBox(height: 5.0, width: 0.0),
                      ProfTextField(
                          size: 17, fontWeight: FontWeight.w600, text: name),
                      SizeBox(height: 5.0, width: 0.0),
                      ProfTextField(
                          size: 15,
                          fontWeight: FontWeight.w600,
                          text: workPlace),
                      SizeBox(height: 5.0, width: 0.0),
                      ProfTextField(
                        size: 10,
                        fontWeight: FontWeight.w600,
                        text: designation
                      ),
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ProfTextField(
                    size: 25.0, fontWeight: FontWeight.w600, text: 'Date'),
                ProfTextField(
                    size: 25.0, fontWeight: FontWeight.w600, text: _dateString),
              ],
            ),
          ),
          SizeBox(height: 20, width: 0),
          Flexible(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ProfTextField(
                    size: 25.0, fontWeight: FontWeight.w600, text: 'Time'),
                ProfTextField(
                    size: 25.0, fontWeight: FontWeight.w600, text: _timeString),
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
                  onPress: newEntry,
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
                  image: const AssetImage(
                      'assets/images/button_images/new_entry.png'),
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
                  image: const AssetImage(
                      'assets/images/button_images/past_entry.png'),
                  onPress: pastEntry,
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
                  image: const AssetImage(
                      'assets/images/button_images/services_btn.png'),
                  onPress: services,
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
                  image: const AssetImage(
                      'assets/images/button_images/read_data.png'),
                  onPress: readData,
                ),
              ],
            ),
          ),
        ],
      ),
      //bottomNavigationBar: const BottomTabNavigator(),
    );
  }
}
