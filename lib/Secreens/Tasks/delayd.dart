import 'package:flutter/material.dart';

class Delayde extends StatefulWidget {
  const Delayde({Key? key}) : super(key: key);

  @override
  State<Delayde> createState() => _DelaydeState();
}

class _DelaydeState extends State<Delayde> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'المهام المؤجلة',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pushNamed(context, 'home');
          },
        ),
      ),
    );
  }
}
