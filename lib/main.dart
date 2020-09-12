import 'package:flutter/material.dart';
import 'package:flutter_widget_demo/DialogDemo.dart';
import 'package:flutter_widget_demo/FormDemo.dart';
import 'package:flutter_widget_demo/ListViewDemo.dart';
import 'package:flutter_widget_demo/UserInfo.dart';
void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    var route={
      MyHomePage.TAG:(context)=>MyHomePage(),
      ListViewDemo.TAG:(context)=>ListViewDemo(),
      FormDemo.TAG:(context)=>FormDemo(),
      DialogDemo.TAG:(context)=>DialogDemo(),
      UserInfo.TAG:(context)=>UserInfo()
    };

    return MaterialApp(
      theme: ThemeData(
       // primarySwatch: Colors.blue,
            brightness: Brightness.dark
      ),
      debugShowCheckedModeBanner: false,
      routes: route,
      //home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  static String TAG="/";
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My All Demo"),),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            RaisedButton(onPressed: (){
              //Navigator.of(context).push(MaterialPageRoute(builder: (_)=>ListViewDemo()));
              Navigator.pushNamed(context, ListViewDemo.TAG);
            },child: Text("ListView Demo"),),
            RaisedButton(onPressed: (){
              //Navigator.of(context).push(MaterialPageRoute(builder: (_)=>FormDemo()));
              Navigator.pushNamed(context, FormDemo.TAG);
            },child: Text("Form Demo"),),
            RaisedButton(onPressed: (){
              //Navigator.of(context).push(MaterialPageRoute(builder: (_)=>DialogDemo()));
              Navigator.pushNamed(context, DialogDemo.TAG);
            },child: Text("Dialog Demo"),)
          ],
        ),
      ),
    );
  }
}

