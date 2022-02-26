import 'package:fanpage_app/models/users.dart';
import 'package:fanpage_app/screens/wrapper.dart';
import 'package:fanpage_app/services/auth.dart';
import 'package:fanpage_app/splash.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyBT7_zFAz4X5tso0n-Ok3-NMUCgdNMQGCA",
      appId: "1:216276891814:android:ac7958c06f4629f4e55c67",
      messagingSenderId: "216276891814",
      projectId: "fan-page-app-528b9",
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<MyUser?>.value(
      value: AuthService().user,
      catchError: (_, __) {},
      initialData: null,
      child: MaterialApp(
        home: Splash(),
      ),
    );
  }
}
