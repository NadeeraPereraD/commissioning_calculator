import 'package:commissioning_calculator/widgets/buttons.dart';
import 'package:commissioning_calculator/widgets/sized_box.dart';
import 'package:commissioning_calculator/widgets/text.dart';
import 'package:flutter/material.dart';

class ReadData extends StatefulWidget {
  const ReadData({super.key});

  @override
  State<ReadData> createState() => _ReadDataState();
}

class _ReadDataState extends State<ReadData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Read Data'),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 20.0, left: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfTextField(
              size: 25,  
              fontWeight: FontWeight.w800, 
              text: 'Previous month Data',
              textDecoration: TextDecoration.underline,  
            ),
            SizeBox(height: 30, width: 0),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ProfTextField(
                  size: 20, 
                  fontWeight: FontWeight.w500, 
                  text: 'No. of Services',
                ),
                SizeBox(height: 0, width: 45),
                ProfTextField(
                  size: 20, 
                  fontWeight: FontWeight.w500, 
                  text: 'Services',
                ),
              ],
            ),
            SizeBox(height: 30, width: 0),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ProfTextField(
                  size: 20, 
                  fontWeight: FontWeight.w500, 
                  text: 'Total Commission',
                ),
                SizeBox(height: 0, width: 20),
                ProfTextField(
                  size: 20, 
                  fontWeight: FontWeight.w500, 
                  text: 'Commission',
                ),
              ],
            ),
            SizeBox(height: 75, width: 0),
            ProfTextField(
              size: 25,  
              fontWeight: FontWeight.w800, 
              text: 'Current month Data',
              textDecoration: TextDecoration.underline,  
            ),
            SizeBox(height: 30, width: 0),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ProfTextField(
                  size: 20, 
                  fontWeight: FontWeight.w500, 
                  text: 'No. of Services',
                ),
                SizeBox(height: 0, width: 45),
                ProfTextField(
                  size: 20, 
                  fontWeight: FontWeight.w500, 
                  text: 'Services',
                ),
              ],
            ),
            SizeBox(height: 30, width: 0),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ProfTextField(
                  size: 20, 
                  fontWeight: FontWeight.w500, 
                  text: 'Total Commission',
                ),
                SizeBox(height: 0, width: 20),
                ProfTextField(
                  size: 20, 
                  fontWeight: FontWeight.w500, 
                  text: 'Commission',
                ),
              ],
            ),
            SizeBox(height: 50, width: 0),
            Buttons(
              backgroundColor: Colors.blueAccent, 
              text: 'Get previous month data', 
              textColor: Colors.white, 
              size: 25, 
              fontWeight: FontWeight.bold, 
              radius: 50, 
              width: MediaQuery.of(context).size.width - 40, 
              height: 75, 
              image: const AssetImage(''), 
              onPress: (){}
            ),
            SizeBox(height: 20, width: 0),
            Buttons(
              backgroundColor: Colors.blueAccent, 
              text: 'Get current month data', 
              textColor: Colors.white, 
              size: 25, 
              fontWeight: FontWeight.bold, 
              radius: 50, 
              width: MediaQuery.of(context).size.width - 40, 
              height: 75, 
              image: const AssetImage(''), 
              onPress: (){}
            ),
          ],
        ),
      ),
    );
  }
}