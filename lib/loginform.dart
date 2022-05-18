import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: LoginForm(),
  ));
}

class LoginForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginFormState();
}

class LoginFormState extends State<LoginForm> {

  var formKey = GlobalKey<FormState>();
  RegExp numvalues = RegExp("[0-9]+");
  bool validform =  false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LoginPage"),
      ),
      body: Center(
        child: Form(
          key: formKey,
          child: Column(
              children: [

                TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2.0),
                    ),
                    hintText: 'Email',),
                  validator: (input){
                    if(input!.isEmpty || numvalues.hasMatch(input) ){
                      return "Please fill all the fields";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  validator: (input){
                    if(input!.isEmpty){
                      return "Please fill all the fields";
                    }
                    return null;
                  },
                ),
                ElevatedButton(
                    onPressed: (){
                      if(formKey.currentState!.validate()) {

                        setState(() {
                          validform = true;
                        });
                      }else{
                        setState(() {
                          validform = false;
                        });
                      }

                    }, child: Text("Login")),

                Text(validform ? "Success": "empty field"),
              ]
          ),
        ),
      ),
    );
  }
}