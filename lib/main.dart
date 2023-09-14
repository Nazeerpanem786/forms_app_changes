import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Validation'),
        ),
        body: Center(
          child: MyCustomForm(),
        ),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget{

  @override
  State<MyCustomForm> createState() => MyCustomFormState();
}

class MyCustomFormState extends State<MyCustomForm>{

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Text("SignIn Form",style: TextStyle(color: Colors.black),),
          Padding(padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'enter mobile number',
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'password',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Prosseing Data')));
              }
            }, child: Text('Log In'),
          ),
          Text('SignIn Form',style: TextStyle(color: Colors.black),),
          Padding(padding: EdgeInsets.all(20),
            child: TextFormField(
              validator: (value){
                if(value == null || value.isEmpty){
                  return 'Please Give Value';
                }
                return null;
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Prosseing Data')));
              }
            }, child: Text('Log In'),
          ),
          Text('SignOut Form',style: TextStyle(color: Colors.black),),
          Padding(padding: EdgeInsets.all(20),
            child: TextFormField(
              validator: (value){
                if(value == null || value.isEmpty){
                  return 'Please Give Value';
                }
                return null;
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Prosseing Data')));
              }
            }, child: Text('Log Out'),
          ),
        ],
      ),
    );
  }
}