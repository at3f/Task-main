import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled23/Change%20Email.dart';
import 'package:untitled23/Change%20Pass.dart';
import 'package:untitled23/Login%20Screen.dart';

class inNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Icon(Icons.email),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChangeEmailScreen(),
                        ),
                      );
                    },
                    child: Text(
                      '  Change Email Address',
                      style: TextStyle(
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ),
                  SizedBox(
                    height: 80.0,
                  ),
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Icon(Icons.password_rounded),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChangePasswordScreen(),
                        ),
                      );
                    },
                    child: Text(
                      '  Change Password',
                      style: TextStyle(
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ),
                  SizedBox(
                    height: 80.0,
                  ),
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Icon(Icons.logout),
                  TextButton(
                      onPressed: (){
                        FirebaseAuth.instance.signOut();
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (_) => LoginScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Log Out',
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      )),
                  SizedBox(
                    height: 80.0,
                  ),
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  SizedBox(
                    height: 80.0,
                  ),
                ]),
                Container(
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      '',
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 80.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
