import 'package:flutter/material.dart';
import 'package:mshope/screens/detail1.dart';
import 'package:mshope/screens/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mshope/screens/login.dart';
import 'package:mshope/screens/start%20screen.dart';
import 'firebase_options.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    )
  );
}

