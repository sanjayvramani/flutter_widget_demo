import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './CommonWidgets/CommonWidgets.dart';

class ListViewDemo extends StatefulWidget {
  @override
  _ListViewDemoState createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  
  var lstCity =[
    "Surat","Baroda","Rajkot","Ahmedabad","Bhavnagar","Amreli","Junagath",
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar("ListView Demo"),
     /* body: SingleChildScrollView(
        child: Column(
          children: _getList(),
        ),
      ),*/

     body: Container(
       /*child: ListView(
         //physics: NeverScrollableScrollPhysics(),
         physics: BouncingScrollPhysics(),
         children: _getList(),
       ),*/
       
       child: ListView.builder(
         itemCount: lstCity.length,
         itemBuilder: (context,index){
           return Card(
             child: Container(
               
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text(lstCity[index],style: TextStyle(fontSize: 24.0),),
                   IconButton(icon: Icon(Icons.delete,color: Colors.red,),
                       onPressed: (){
                         removeCity(index);
                       })
                 ]
               ),
               
             ),
           );
         },
       ),
     ),

    );
  }

  removeCity(int index)
  {
    showDialog(context: context,
    barrierDismissible: false,
    child: AlertDialog(
      title: Text("Confirm Delete"),
      content: Text("Are you sure to delete?"),
      actions: [
        FlatButton(onPressed: (){
          Navigator.pop(context);
          lstCity.removeAt(index);
          setState(() {});
        }, child: Text("Yes")),
        FlatButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text("No"))
      ],
    ));
    
   /* lstCity.removeAt(index);
    setState(() {

    });*/
  }

  List<Widget> _getList()
  {
    List<Widget> lstWidget = List<Widget>();

    for(int i = 0;i<30;i++)
      {
        lstWidget.add(
          TextField(
            decoration: InputDecoration(
              hintText: "Hint $i"
            ),
          )
        );
      }

    return lstWidget;
  }


}
