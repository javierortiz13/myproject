//not in use for this project

import 'dart:html';

import 'package:fanpage_app/helpers/authenticate.dart';
import 'package:fanpage_app/screens/authenticate/sign_in.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final imageUrl =
      'https://previews.123rf.com/images/urfandadashov/urfandadashov1808/urfandadashov180822180/108834484-chat-vektor-symbol-isoliert-auf-transparentem-hintergrund-chat-logo-konzept.jpg';
  @override
  void initState() {
    super.initState();
    _navigateToWrapper();
  }

  _navigateToWrapper() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Authenticate()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image:
              DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  'Secret Messsage App',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 48.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
