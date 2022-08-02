import 'package:flutter/material.dart';
import 'package:room_reservation/screens/forgot_password/forgot_password_screen.dart';
import 'package:room_reservation/screens/home/home_screen.dart';

import '../../../components/custom_surfix_icon.dart';
import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class SignForm extends StatefulWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formkey = GlobalKey<FormState>();
  late String email;
  late String password;
  bool remember = false;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildPasswordFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          Row(
            children: [
              Checkbox(
                  value: remember,
                  activeColor: kPrimaryColor,
                  onChanged: (value) {
                    setState(() {
                      remember = value!;
                    });
                  }),
              Text("Remember Me"),
              Spacer(),
              GestureDetector(
                  onTap: () => Navigator.pushNamed(
                      context, ForgotPasswordScreen.routeName),
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(decoration: TextDecoration.underline),
                  ))
            ],
          ),
          FormError(errors: errors),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          DefaultButton(
            text: "Login",
            press: () {
              if (_formkey.currentState!.validate()) {
                _formkey.currentState!.save();
              }
            },
          ),
          GestureDetector(
              onTap: () => Navigator.pushNamed(context, HomeScreen.routeName),
              child: Text(
                "Home",
                style: TextStyle(decoration: TextDecoration.underline),
              ))
        ],
      ),
    );
  }
}

TextFormField buildPasswordFormField() {
  return TextFormField(
    obscureText: true,
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
      labelText: "Password",
      hintText: "Enter your password",
      floatingLabelBehavior: FloatingLabelBehavior.always,
      suffixIcon: CustomSurffixIcon(
        svgIcon: "assets/icons/Lock.svg",
      ),
    ),
  );
}

TextFormField buildEmailFormField() {
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
    validator: (value) {
      var errors;
      if (value!.isEmpty && errors.contains(kEmailNullError)) {
        setState() {
          errors.add(kEmailNullError);
        }

        ;
      } else if (!emailValidatorRegExp.hasMatch(value) &&
          !errors.contains(kInvalidEmailError)) {
        setState() {
          errors.add(kInvalidEmailError);
        }
      }
      return null;
    },
    decoration: InputDecoration(
      labelText: "Email",
      hintText: "Enter your email",
      floatingLabelBehavior: FloatingLabelBehavior.always,
      suffixIcon: CustomSurffixIcon(
        svgIcon: "assets/icons/Mail.svg",
      ),
    ),
  );
}
