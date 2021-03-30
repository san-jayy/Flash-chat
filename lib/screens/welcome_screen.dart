import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flutter/material.dart';

import 'package:flash_chat/Components/round_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));

    animation = ColorTween(
      begin: Colors.grey[700],
      end: Colors.white,
    ).animate(controller);
    //this can be used for curved animations
    // animation = CurvedAnimation(parent: controller, curve: Curves.decelerate);
    // controller.forward();
    // animation.addStatusListener((status) {
    //   if (status == AnimationStatus.completed) {
    //     controller.reverse(from: 1);
    //   } else if (status == AnimationStatus.dismissed) {
    //     controller.forward();
    //   }
    //   ;
    //   //print(status);
    // });
    controller.forward();

    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60,
                  ),
                ),
                Text(
                  'Flash Chat',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 45,
                      fontWeight: FontWeight.w900),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              colour: Colors.lightBlueAccent,
              buttontext: 'Log in',
              onpressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            RoundedButton(
              colour: Colors.blueAccent,
              buttontext: 'Register',
              onpressed: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            )
          ],
        ),
      ),
    );
  }
}

// code for Rounded button
// Padding(
//         padding: EdgeInsets.symmetric(vertical: 16.0),
//         child: Material(
//           color: Colors.blueAccent,
//           borderRadius: BorderRadius.circular(30.0),
//           elevation: 6.0,
//           child: MaterialButton(
//             onPressed: () {
//               Navigator.pushNamed(context, RegistrationScreen.id);
//               // the below code for un named routes
//               // Navigator.push(context,
//               //     MaterialPageRoute(builder: (context) {
//               //   return RegistrationScreen();
//               // }));
//             },
//             minWidth: 200.0,
//             height: 42.0,
//             child: Text(
//               'Register',
//             ),
//           ),
//         ),
//       ),
