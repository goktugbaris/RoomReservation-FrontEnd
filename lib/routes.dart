import 'package:flutter/widgets.dart';
import 'package:room_reservation/screens/forgot_password/forgot_password_screen.dart';
import 'package:room_reservation/screens/home/home_screen.dart';
import 'package:room_reservation/screens/sign_in/sign_in_screen.dart';
import 'package:room_reservation/screens/sign_up/sign_up_screen.dart';
import 'package:room_reservation/screens/splash/splash_screen.dart';

final Map<String , WidgetBuilder> routes = {
  SplashScreen.routeName : (context) => SplashScreen(),
  SignInScreen.routeName : (context) => SignInScreen(),
  ForgotPasswordScreen.routeName : (context) => ForgotPasswordScreen(),
  SignUpscreen.routename : (context) => SignUpscreen(),
  HomeScreen.routeName : (context) => HomeScreen(),
};
