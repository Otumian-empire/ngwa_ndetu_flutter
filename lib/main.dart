import 'package:flutter/material.dart';
import 'package:ngwa_ndetu/add.dart';
import 'package:ngwa_ndetu/app.constants.dart';
import 'package:ngwa_ndetu/login.dart';
import 'package:ngwa_ndetu/notes.dart';
import 'package:ngwa_ndetu/signup.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Notes(),
    );
  }
}
