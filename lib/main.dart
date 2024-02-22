import 'package:flutter/material.dart';
import 'package:notifications_tutorial/constants/routes.dart';
import 'package:notifications_tutorial/local_notifications.dart';
import 'package:notifications_tutorial/pages/home.dart';
import 'package:notifications_tutorial/pages/second_page.dart';
import 'package:notifications_tutorial/pages/third_page.dart';
import 'package:permission_handler/permission_handler.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Permission.notification.isDenied.then((value) {
    if (value) {
      Permission.notification.request();
    }
  });
  await LocalNotifications.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        homeRoute: (context) => HomePage(),
        secondRoute: (context) => SecondPage(),
        thirdRoute: (context) => ThirdPage(),
      },
    );
  }
}
