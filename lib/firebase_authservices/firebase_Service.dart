
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../screens/detail1.dart';
import '../screens/start screen.dart';

class Firebase {
  Future<void>register({
    required String firstname,
    required String lastname,
    required String email,
    required String password,
    required String conformpassword,
    required BuildContext context
  })async {
try{
  FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email, password: password);
  Navigator.push(context,MaterialPageRoute(builder: (context) =>StartScreen() ,));
}catch(e){
  print(e);
}
}

  Future<void>login({required String email,
    required String password,
    required BuildContext context})async {
try{
   await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
  Navigator.push(context,MaterialPageRoute(builder: (context) =>const StartScreen() ,));
 // print(data);
}catch(e){
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(e.toString()),
  ));
  
}
  }
}
