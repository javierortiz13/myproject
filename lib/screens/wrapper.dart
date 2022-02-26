import 'package:fanpage_app/models/users.dart';
import 'package:fanpage_app/screens/authenticate/authenticate.dart';
import 'package:fanpage_app/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<MyUser?>(context);

    //return either home or Authentincate widget
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
