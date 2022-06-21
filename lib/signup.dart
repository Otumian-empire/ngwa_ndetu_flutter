import 'package:flutter/material.dart';
import 'package:ngwa_ndetu/app.constants.dart';
import 'package:ngwa_ndetu/login.dart';
import 'package:ngwa_ndetu/ui.constants.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(AppConstants.singUpTitle),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(children: [
            const Spacer(flex: 2),
            Row(
              children: [
                Text(
                  "Email",
                  style: UIConstants.labelStyle,
                ),
              ],
            ),
            const Spacer(),
            TextField(
              style: UIConstants.inputStyle,
              decoration: const InputDecoration(
                hintText: "Enter a valid email, johnDoe23@email.com",
              ),
            ),
            const Spacer(flex: 2),
            Row(
              children: [
                Text(
                  "username",
                  style: UIConstants.labelStyle,
                ),
              ],
            ),
            const Spacer(),
            TextField(
              style: UIConstants.inputStyle,
              decoration: const InputDecoration(
                hintText: "Enter username, johnDoe23",
              ),
            ),
            const Spacer(),
            Row(
              children: [
                Text(
                  "password",
                  style: UIConstants.labelStyle,
                ),
              ],
            ),
            const Spacer(),
            TextField(
              style: UIConstants.inputStyle,
              decoration: const InputDecoration(
                hintText: "Enter password",
              ),
            ),
            const Spacer(),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // print("Login button clicked");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Login()));
                  },
                  child: const Text("Submit"),
                )
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  const Text(
                    "Already have an account, ",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()));
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.blueAccent,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(flex: 5),
          ]),
        ),
      ),
    );
  }
}
