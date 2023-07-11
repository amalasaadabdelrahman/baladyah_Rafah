import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_container.dart';

class CustomSyack extends StatefulWidget {
  const CustomSyack({Key? key, required this.task, required this.onpressed})
      : super(key: key);
  final String task;
  final Function() onpressed;

  @override
  State<CustomSyack> createState() => _CustomSyackState();
}

class _CustomSyackState extends State<CustomSyack> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Custom_container(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: 17,
                  backgroundColor: Colors.green,
                ),
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: IconButton(
                    onPressed: widget.onpressed,
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              child: Text(
                widget.task,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
