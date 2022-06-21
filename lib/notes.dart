import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ngwa_ndetu/add.dart';
import 'package:ngwa_ndetu/app.constants.dart';
import 'package:ngwa_ndetu/login.dart';
import 'package:ngwa_ndetu/signup.dart';
import 'package:ngwa_ndetu/ui.constants.dart';

class Notes extends StatelessWidget {
  Notes({Key? key}) : super(key: key);
  List<String> entries = <String>[
    'go to the bank',
    'Call the administration',
    'Send the required files for Yale admission',
    'Soar the skies'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(AppConstants.mainTitle),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 5),
                  height: 50,
                  color: const Color.fromARGB(33, 100, 100, 104),
                  child: TextButton(
                    onPressed: () {
                      print(" ${index + 1} - ${entries[index]}");
                    },
                    onLongPress: () {
                      print("Delete ${index + 1}");
                    },
                    child: Text(entries[index].toUpperCase()),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
