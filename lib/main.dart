import 'package:flutter/material.dart';
import 'package:flutter_widget_demo/DialogDemo.dart';
import 'package:flutter_widget_demo/FormDemo.dart';
void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        primarySwatch: Colors.blue,
            brightness: Brightness.dark
      ),
      debugShowCheckedModeBanner: false,
      home: DialogDemo(),
    );
  }
}
