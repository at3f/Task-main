import 'package:flutter/material.dart';
import 'package:untitled23/NavBar.dart';
import 'package:untitled23/Profile.dart';
import 'package:untitled23/menu.dart';

class khadmati extends StatefulWidget {
  const khadmati({Key? key}) : super(key: key);
  @override
  State<khadmati> createState() => _khadmatiState();
}

class _khadmatiState extends State<khadmati> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/logo.png'),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Profile(),
                            ),
                          );
                          setState(() {});
                        },
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/user_profile.png',
                                height: 120,
                                width: 120,
                              ),
                              Text(
                                'Profile',
                                style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NavBar(),
                            ),
                          );
                          setState(() {});
                        },
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/untitled.png',
                                height: 120,
                                width: 150,
                              ),
                              Text(
                                'Home',
                                style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 100.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Menu(),
                            ),
                          );
                          setState(() {});
                        },
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Image.asset(
                                'assets/our_service.png',
                                height: 120,
                                width: 120,
                              ),
                              Text(
                                'Our services',
                                style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
