import 'package:flutter/material.dart';

import '../constants/constants.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Image.asset(
                Constants.loginPageImage,
                height: MediaQuery.of(context).size.height / 2.3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
