import 'package:flutter/material.dart';
import 'package:tp_navigation/pages/project_page.dart';
import 'package:tp_navigation/pages/home_page.dart';
import 'package:tp_navigation/pages/cv_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/home": (context){
          return HomePage();
        },
        "/projet": (context) => AnimePage(),
        "/cv": (context) => CvPage(),



      },
       theme: ThemeData(
           primarySwatch: Colors.lightGreen),
      initialRoute: "/home",
    );

  }
}




