import 'package:baldyah_tasks/Secreens/home_page.dart';
import 'package:baldyah_tasks/Secreens/register_secreen.dart';
import 'package:baldyah_tasks/Secreens/intro_secreen.dart';
import 'package:flutter/material.dart';
import 'Secreens/Tasks/canceled.dart';
import 'Secreens/Tasks/completed.dart';
import 'Secreens/Tasks/delayd.dart';
import 'Secreens/Tasks/in_operation.dart';
import 'Secreens/login_secreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'intro',
      routes: {
        'intro': (context) => IntroSecreen(),
        'login': (context) => LoginSecreen(),
        'register': (context) => Register(),
        'home': (context) => HomePage(),
        'in_opearation': (context) => InOperation(),
        'delayed': (context) => Delayde(),
        'completed': (context) => Completed(),
        'canceled': (context) => Canceld(),
      },
    );
  }
}
