import 'dart:async';
import 'package:flutter/material.dart';
import 'package:room_reservation/constants.dart';
import 'package:room_reservation/screens/sign_in/sign_in_screen.dart';
import 'package:room_reservation/screens/splash/components/splash_content.dart';
import '../../../components/default_button.dart';
import '../../../size_config.dart';


class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  void initState(){
    super.initState();
    startTimer();
  }
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> splashData = [
      {
        "text": "A modern way to manage your company space.",
        "image": "assets/images/meeting-2.png"
      },
      {
        "text": "Make Your Workplace Better",
        "image": "assets/images/meeting.png"
      },
      {
        "text": "Book Your Meeting in a Second",
        "image": "assets/images/meeting-3.png"
      },
    ];
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: splashData.length,
              itemBuilder: (context, index) => SplashContent(
                image: splashData[index]["image"] ?? "default",
                text: splashData[index]["text"] ?? "default",
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: Column(
                children: <Widget>[
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        splashData.length, (index) => buildDot(index: index)),
                  ),
                  Spacer(flex: 1),
                  DefaultButton(
                    text: "Explore",
                    press: (){
                      Navigator.pushNamed(context, SignInScreen.routeName);
                    },
                  ),
                  Spacer(),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }

   startTimer() async {
    var duration = Duration(seconds:1);
    return Timer(duration, (route));
   }
   route (){
    Navigator.pushNamed(context, SignInScreen.routeName);
   }
}



