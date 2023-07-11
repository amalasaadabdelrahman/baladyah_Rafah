import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Custom_container extends StatefulWidget {
  const Custom_container({Key? key}) : super(key: key);

  @override
  State<Custom_container> createState() => _Custom_containerState();
}

class _Custom_containerState extends State<Custom_container> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
