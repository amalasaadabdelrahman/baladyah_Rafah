import 'package:flutter/material.dart';

class Canceld extends StatefulWidget {
  const Canceld({Key? key}) : super(key: key);

  @override
  State<Canceld> createState() => _CanceldState();
}

class _CanceldState extends State<Canceld> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'المهام الملغاة',
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
