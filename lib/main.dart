

import 'package:flutter/material.dart';

import 'gmail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Changed',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: Gmail(),

    );
  }
}

