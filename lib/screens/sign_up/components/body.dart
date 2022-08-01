import 'package:flutter/material.dart';
import 'package:room_reservation/constants.dart';
import 'package:room_reservation/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "Create Account",
            style: headingStyle,
          ),
          Text(
            "Create an account to get all features",
            textAlign: TextAlign.center,
          ),
          SignUpForm(),
        ],
      ),
    );
  }
}

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  late String email;
  late String password;
  late String conform_password;
  final List<String> errors = [];
  
  @override
  Widget build(BuildContext context) {
    return Form(child: Column(
      children: [],
    ),
    );
  }
}
