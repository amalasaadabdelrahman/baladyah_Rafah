import 'package:flutter/material.dart';

class InOperation extends StatefulWidget {
  const InOperation({Key? key}) : super(key: key);

  @override
  State<InOperation> createState() => _InOperationState();
}

class _InOperationState extends State<InOperation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'المهام قيد العمل',
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
