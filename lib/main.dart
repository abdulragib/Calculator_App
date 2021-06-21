import 'package:flutter/material.dart';
import './home_page.dart';

void main() {
  runApp(
    new MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator App",
      theme: new ThemeData(primarySwatch: Colors.red),
      home: new HomePage(),
    );
  }
}

//primarySwatch is not a Color. It's MaterialColor. Which means it's a the different shades of a color a material app will use.
//primaryColor is one of those shades. To be exact, primaryColor is normally equal to primarySwatch[500].
