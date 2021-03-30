import 'package:firebase_core/firebase_core.dart';
import 'package:flash_chat/constants.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/Components/round_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'chat_screen.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;

  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  email = value;
                  //Do something with the user input.
                },
                style: TextStyle(color: Colors.black87),
                decoration: kTextFieldDEcoration.copyWith(
                    hintText: 'Enter your email')),
            SizedBox(
              height: 8.0,
            ),
            TextField(
                textAlign: TextAlign.center,
                obscureText: true,
                onChanged: (value) {
                  password = value;
                  //Do something with the user input static const String id = 'welcome_screen';.
                },
                style: TextStyle(color: Colors.black87),
                decoration: kTextFieldDEcoration.copyWith(
                    hintText: 'Enter your password')),
            SizedBox(
              height: 24.0,
            ),
            RoundedButton(
              colour: Colors.blueAccent,
              buttontext: 'Register',
              onpressed: () {
                _rigisterAccount();
              },
            )
          ],
        ),
      ),
    );
  }

  void _rigisterAccount() async {
    // try {
    //   final User user = (await _auth.createUserWithEmailAndPassword(
    //           email: email, password: password))

    //       .user;
    //       return
    //   if (user != null) {
    //     Navigator.pushNamed(context, ChatScreen.id);
    //   }
    // } catch (e) {
    //   print(e);
    // }
  }
}