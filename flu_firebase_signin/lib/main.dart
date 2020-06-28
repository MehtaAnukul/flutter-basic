import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = new GoogleSignIn();

  Future<FirebaseUser> _signIn() async{
    GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;

   // FirebaseUser firebaseUser = await _auth.signInWithEmailAndPassword(email: null, password: null


  }

  void _signOut(){
    googleSignIn.signOut();
    print("User signOut");
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Firebase Demo",
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Firebase Demo"),
      ),
      body: new Padding(
          padding: const EdgeInsets.all(20.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new RaisedButton(
                onPressed: null,
                child: new Text("Sign In",style: TextStyle(color: Colors.white),),
                color: Colors.blue,
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
              ),
              new RaisedButton(
                onPressed: _signOut,
                child: new Text("Sign Out",style: TextStyle(color: Colors.white),),
                color: Colors.blue,
              ),
            ],
          ),
      ),
    );
  }
}
