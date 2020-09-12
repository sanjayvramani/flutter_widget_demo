import 'package:flutter/material.dart';
import 'package:flutter_widget_demo/main.dart';

class UserInfo extends StatefulWidget{
  static String TAG="userinfo";
  final Map<String,dynamic> map;

  //UserInfo(this.map);// must need data
  UserInfo({this.map}); // optional, if data not provided it will be null
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return UserInfoState();
  }
  
}
class UserInfoState extends State<UserInfo>{

  @override
  Widget build(BuildContext context) {

    var map = ModalRoute.of(context).settings.arguments as Map<String,dynamic>;

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("User Info"),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(map["name"]),
            Text(map["email"]),
            Text(map["mobile"]),
            Text(map["password"]),
            RaisedButton(onPressed: (){
              Navigator.pushNamedAndRemoveUntil(context, MyHomePage.TAG, (route) => false);
            },child: Text("Home"),)
          ],
        ),
      ),
    );
  }

 /* @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("User Info"),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(widget.map["name"]),
            Text(widget.map["email"]),
            Text(widget.map["mobile"]),
            Text(widget.map["password"]),
          ],
        ),
      ),
    );
  }*/
  
}