import 'package:commissioning_calculator/widgets/buttons.dart';
import 'package:commissioning_calculator/widgets/sized_box.dart';
import 'package:commissioning_calculator/widgets/text.dart';
import 'package:commissioning_calculator/widgets/text_field.dart';
import 'package:flutter/material.dart';

class AddServices extends StatefulWidget {
  const AddServices({super.key});

  @override
  State<AddServices> createState() => _AddServicesState();
}

class _AddServicesState extends State<AddServices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Services'),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
        child: Column(children: [
          Row(
            children: [
              ProfTextField(
                  size: 20.0, fontWeight: FontWeight.w700, text: 'Service Id'),
              SizeBox(height: 0, width: 50),
              TextFields(hintText: 'Enter Service Id', width: 230.0),
            ],
          ),
          SizeBox(height: 15, width: 0),
          Row(
            children: [
              ProfTextField(
                  size: 20.0,
                  fontWeight: FontWeight.w700,
                  text: 'Service Name'),
              SizeBox(height: 0, width: 15),
              TextFields(hintText: 'Enter Service Name', width: 230.0),
            ],
          ),
          SizeBox(height: 15, width: 0),
          Row(
            children: [
              ProfTextField(
                  size: 20.0, fontWeight: FontWeight.w700, text: 'Amount'),
              SizeBox(height: 0, width: 70),
              TextFields(hintText: 'Enter Amount', width: 230.0),
            ],
          ),
          SizeBox(height: 15, width: 0),
          Row(
            children: [
              ProfTextField(
                  size: 20.0, fontWeight: FontWeight.w700, text: 'Commission'),
              SizeBox(height: 0, width: 28),
              TextFields(hintText: 'Enter Commission Percentage', width: 230.0),
            ],
          ),
          SizeBox(height: 150, width: 0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Buttons(
                backgroundColor: Colors.blue,
                text: 'Save',
                textColor: Colors.white,
                size: 25.0,
                fontWeight: FontWeight.bold,
                radius: 30.0,
                width: 140,
                height: 65,
                image: const AssetImage(''),
                onPress: () {},
              ),
              SizeBox(height: 0, width: 50),
              Buttons(
                backgroundColor: Colors.blue,
                text: 'Clear',
                textColor: Colors.white,
                size: 25.0,
                fontWeight: FontWeight.bold,
                radius: 30.0,
                width: 140,
                height: 65,
                image: const AssetImage(''),
                onPress: () {},
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
