import 'package:flutter/material.dart';

import 'main.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController NameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNoController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("SIGNUP"),
          elevation: 0.0,
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[

              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "LOGIN",
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  )),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: NameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Name'),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Email'),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  controller: phoneNoController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'PhoneNo'),
                ),
              ),
              //Checkbox(value: null, onChanged: null),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Password'),
                ),
              ),
              FlatButton(
                onPressed: () {
                  //forgot password screen
                },
                textColor: Colors.red,
                child: Text("Forgot Password"),
              ),
              Container(
                height: 40,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: RaisedButton(
                  onPressed: () {

                  },
                  textColor: Colors.white,
                  color: Colors.red,
                  child: Text("LOGIN"),
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Text("Don't have an Account ?"),
                    FlatButton(
                      textColor: Colors.red,
                      child: Text("SIGNUP",style: TextStyle(fontSize: 20),),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
