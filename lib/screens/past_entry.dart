import 'package:flutter/material.dart';

class PastEntry extends StatefulWidget {
  const PastEntry({super.key});

  @override
  State<PastEntry> createState() => _PastEntryState();
}

class _PastEntryState extends State<PastEntry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Past Entry'),
      ),
    );
  }
}