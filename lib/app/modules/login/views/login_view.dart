import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              height: 150,
              child: Image.asset(
                "assets/images/logo.png",
              ),
            ),
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                labelText: "Username",
                hintText: "Cth : ramdhaniit",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "",
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(8),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Login",
                style: TextStyle(
                  color: Color(0xFF747D8C),
                ),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15),
                primary: Colors.grey[300],
              ),
            )
          ],
        ),
      ),
    );
  }
}
