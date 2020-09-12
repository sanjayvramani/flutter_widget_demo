import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_demo/CommonWidgets/CommonWidgets.dart';
import 'package:flutter_widget_demo/UserInfo.dart';

class FormDemo extends StatefulWidget {
  static String TAG="formdemo";
  @override
  _FormDemoState createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
  GlobalKey<FormState> _formState = GlobalKey<FormState>();
  TextEditingController _txtName = TextEditingController();
  TextEditingController _txtEmailId = TextEditingController();
  TextEditingController _txtMobileNumber = TextEditingController();
  TextEditingController _txtPassword = TextEditingController();



  @override
  Widget build(BuildContext context) {


    var btnSubmit= RaisedButton(onPressed: submitForm,
    child: Text("Submit"),);


    return Scaffold(
      appBar: getAppBar("Form Demo"),
      body: Form(
          key: _formState,
          child: Container(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _getTextFormField(_txtName,"Name",Icon(Icons.person)),
                  SizedBox(height: 8.0,),
                  _getTextFormField(_txtEmailId,"Email Id",Icon(Icons.email)),
                  SizedBox(height: 8.0,),
                  _getTextFormField(_txtMobileNumber,"Mobile Number",Icon(Icons.phone)),
                  SizedBox(height: 8.0,),
                  _getTextFormField(_txtPassword,"Password",Icon(Icons.lock),obsecure: true),
                  SizedBox(height: 8.0,),
                  btnSubmit
                ],
              ),
            ),
          )),
    );
  }

void submitForm()
{
  if(_formState.currentState.validate())
    {
      //print("All is well");

      var map={
        "name":_txtName.text,
        "email":_txtEmailId.text,
        "mobile":_txtMobileNumber.text,
        "password":_txtPassword.text
      };

      //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UserInfo(map: map,)));

      Navigator.pushNamed(context,UserInfo.TAG,arguments: map);



    }
  else
    {
      print("Something is wrong");
    }
}

Widget _getTextFormField(TextEditingController controller,String hinttext,
    Icon prefixIcon,
    {bool obsecure=false})
{
  return TextFormField(
    obscureText: obsecure,
    controller: controller,
    validator: (value){
      return value.isEmpty?"$hinttext can not be blank":null;
    },
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.0)
      ),
      hintText: hinttext,
      prefixIcon: prefixIcon,
    ),
  );
}

}
