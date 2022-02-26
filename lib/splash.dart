import 'dart:html';

import 'package:fanpage_app/screens/wrapper.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final imageUrl =
      'https://scontent.fatl1-2.fna.fbcdn.net/v/t39.30808-6/274691283_371174904829722_8155092361967285998_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=730e14&_nc_ohc=1qymWrGGxCgAX8FiSTs&_nc_oc=AQkmhJVchDdIpu4hzeg1XMIicM3k97xcsQbLwgud1Po8zdkYLHnWtmfF6PvXwDoH3I_Awxf0j3BY9hTFi7hI50W7&tn=mvys7yKoBPXRhjB9&_nc_ht=scontent.fatl1-2.fna&oh=00_AT-0d6nMMLqssaLQUkayR0KunXP3EEKwboIxAFE-LOMjgg&oe=621E27C9';
  @override
  void initState() {
    super.initState();
    _navigateToWrapper();
  }

  _navigateToWrapper() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Wrapper()));
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
                  'Gerard Ortiz Fan Page',
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
