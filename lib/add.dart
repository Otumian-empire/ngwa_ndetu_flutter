import 'package:flutter/material.dart';
import 'package:ngwa_ndetu/app.constants.dart';
import 'package:ngwa_ndetu/ui.constants.dart';

class AddNote extends StatelessWidget {
  const AddNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: AppConstants.appName,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text(AppConstants.addNotes),
          ),
          body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(children: [
              const Spacer(flex: 2),
              Row(
                children: [
                  Text(
                    "Title",
                    style: UIConstants.labelStyle,
                  ),
                ],
              ),
              const Spacer(),
              TextField(
                style: UIConstants.inputStyle,
                decoration: const InputDecoration(
                  hintText: "Enter title, Prepare for exams",
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Text(
                    "Description",
                    style: UIConstants.labelStyle,
                  ),
                ],
              ),
              const Spacer(),
              TextField(
                style: UIConstants.inputStyle,
                decoration: const InputDecoration(
                  hintText: "Enter description",
                  border: OutlineInputBorder(),
                ),
                maxLines: 4,
                keyboardType: TextInputType.multiline,
              ),
              const Spacer(),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // implement logic for adding note
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const SignUp()));
                    },
                    child: const Text("Add Note"),
                  )
                ],
              ),
              const Spacer(flex: 5),
            ]),
          ),
        ));
  }
}
