import 'package:commissioning_calculator/screens/add_services.dart';
import 'package:commissioning_calculator/widgets/buttons.dart';
import 'package:commissioning_calculator/widgets/sized_box.dart';
import 'package:flutter/material.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  void addServices() {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return const AddServices();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Services'),
      ),
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizeBox(height: 100, width: 0),
                  Buttons(
                    backgroundColor: Colors.grey,
                    text: 'Add Services',
                    textColor: Colors.black,
                    size: 25,
                    fontWeight: FontWeight.w500,
                    radius: 0,
                    width: MediaQuery.of(context).size.width - 20,
                    height: 50,
                    isImage: false,
                    image: const AssetImage(''),
                    isIcon: true,
                    icon: Icons.add_circle,
                    onPress: addServices,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
