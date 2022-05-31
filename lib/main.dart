import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled23/5admati.dart';
import 'package:untitled23/About%20US.dart';
import 'package:untitled23/Change%20Email.dart';
import 'package:untitled23/Change%20Pass.dart';
import 'package:untitled23/IN%20NavBar.dart';
import 'package:untitled23/Login%20Screen.dart';
import 'package:untitled23/SignUP.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();
bool isSignUp = false;


class MyApp extends StatelessWidget {
  // constructor
  // build

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Something went wrong'),
            );
          } else if (snapshot.hasData) {
            if (isSignUp) {
              return WelcomeScreen();
            } else {
              return khadmati();
            }
          } else {
            return LoginScreen();
          }
        },
      ),
    );
  }
}
