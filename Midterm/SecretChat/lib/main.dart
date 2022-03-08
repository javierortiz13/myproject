import 'package:fanpage_app/helpers/authenticate.dart';
import 'package:fanpage_app/helpers/helperfunctions.dart';
import 'package:fanpage_app/models/users.dart';
import 'package:fanpage_app/screens/home/chatDetailPage.dart';
import 'package:fanpage_app/services/auth.dart';
import 'package:fanpage_app/splash.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyBXAMlRfajV7uzWfSu0AL62lsDNXCp7jIg",
      appId: "1:482968669294:android:4180496a527d02dc076a7f",
      messagingSenderId: "482968669294",
      projectId: "secretmessageapp-5d67b",
    ),
  );

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  static String title = '';

  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double rating = 0;
  bool userIsLoggedIn = false;

  @override
  void initState() {
    getLoggedInState();
    super.initState();
  }

  getLoggedInState() async {
    await HelperFunctions.getUserLoggedInSharedPreference().then((value) {
      setState(() {
        userIsLoggedIn = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Secret Chat',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff145C9E),
        scaffoldBackgroundColor: Color(0xff1F1F1F),
        accentColor: Color(0xff007EF4),
        fontFamily: "OverpassRegular",
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: userIsLoggedIn != null
          ? userIsLoggedIn
              ? ChatRoom()
              : Authenticate()
          : Container(
              child: Center(
                child: Authenticate(),
              ),
            ),
    );
  }
}
