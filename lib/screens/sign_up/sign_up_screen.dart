import 'package:flutter/material.dart';

import 'components/body.dart';
class SignUpscreen extends StatelessWidget {
  const SignUpscreen({Key? key}) : super(key: key);
  static String routename = "/sign_up";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up"),
      ),
      body: Body(),
    );
  }
}
