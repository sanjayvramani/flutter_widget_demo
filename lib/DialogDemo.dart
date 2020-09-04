import 'package:flutter/material.dart';
import 'package:flutter_widget_demo/CommonWidgets/CommonWidgets.dart';
class DialogDemo extends StatefulWidget {
  @override
  _DialogDemoState createState() => _DialogDemoState();
}

class _DialogDemoState extends State<DialogDemo> {

  //DatePicker Demo
  selectDate() async
  {
    var result = await showDatePicker(context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2019),
        lastDate: DateTime(2021));
    print("Select Date is $result");
  }

  //TimePicker Demo
  selectTime() async
  {
    var result = await showTimePicker(context: context,
        initialTime: TimeOfDay.now());

    print("Selected Time is $result");
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar("Dialog Demo"),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            RaisedButton(onPressed: selectDate,child: Text("Select Date"),),
            RaisedButton(onPressed: selectTime,child: Text("Select Time"),)
          ],
        ),
      ),
    );
  }
}
