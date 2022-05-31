import 'dart:math';
import 'package:flutter/material.dart';
import 'package:untitled23/problem%20des.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  String category = '';
  int counterId = 0;
  Random rnd = new Random();
  @override
  Widget build(BuildContext context) {
    counterId = rnd.nextInt(1000000);
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(40),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  hintText: '  Choose Category',
                  contentPadding: EdgeInsets.all(0.0),
                  suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      int min = 50;
                      int max = 500;
                      Random rnd = new Random();
                      int r = min + rnd.nextInt(max - min);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Problem(
                            id: counterId.toString(),
                            category: 'Carpenter',
                            price: r.toString(),
                          ),
                        ),
                      );
                      setState(() {});
                    },
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/cpng.png',
                            height: 150,
                            width: 150,
                          ),
                          Text(
                            'Carpenter',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Price: \$50-\$500',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      int min = 100;
                      int max = 600;
                      Random rnd = new Random();
                      int r = min + rnd.nextInt(max - min);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Problem(
                              id: counterId.toString(),
                              category: 'Blacksmith',
                              price: r.toString(),
                            ),
                          ));
                      setState(() {});
                    },
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/blacksmith.png',
                            height: 150,
                            width: 150,
                          ),
                          Text(
                            'Blacksmith',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Price: \$100-\$600',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 90,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      int min = 200;
                      int max = 1000;
                      Random rnd = new Random();
                      int r = min + rnd.nextInt(max - min);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Problem(
                              id: counterId.toString(),
                              category: 'Electrician',
                              price: r.toString(),
                            ),
                          ));
                      setState(() {});
                    },
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/elec.png',
                            height: 150,
                            width: 150,
                          ),
                          Text(
                            'Electrician',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Price: \$200-\$1000',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      int min = 50;
                      int max = 500;
                      Random rnd = new Random();
                      int r = min + rnd.nextInt(max - min);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Problem(
                            id: counterId.toString(),
                            category: 'Construction',
                            price: r.toString(),
                          ),
                        ),
                      );
                      setState(() {});
                    },
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/consult.png',
                            height: 150,
                            width: 150,
                          ),
                          Text(
                            'Construction',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Price: \$50-\$500',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 90,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      int min = 100;
                      int max = 600;
                      Random rnd = new Random();
                      int r = min + rnd.nextInt(max - min);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Problem(
                            id: counterId.toString(),
                            category: 'Paint',
                            price: r.toString(),
                          ),
                        ),
                      );
                      setState(() {});
                    },
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/paint.png',
                            height: 150,
                            width: 150,
                          ),
                          Text(
                            'Paint',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Price: \$100-\$600',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      int min = 50;
                      int max = 500;
                      Random rnd = new Random();
                      int r = min + rnd.nextInt(max - min);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Problem(
                            id: counterId.toString(),
                            category: 'Cleaner',
                            price: r.toString(),
                          ),
                        ),
                      );
                      setState(() {});
                    },
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/cleaner.png',
                            height: 150,
                            width: 150,
                          ),
                          Text(
                            'Cleaner',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Price: \$50-\$500',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 90,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      int min = 200;
                      int max = 800;
                      Random rnd = new Random();
                      int r = min + rnd.nextInt(max - min);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Problem(
                            id: counterId.toString(),
                            category: 'Conditioning',
                            price: r.toString(),
                          ),
                        ),
                      );
                      setState(() {});
                    },
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/air.png',
                            height: 150,
                            width: 150,
                          ),
                          Text(
                            'Conditioning',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Price: \$200-\$800',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      int min = 100;
                      int max = 1000;
                      Random rnd = new Random();
                      int r = min + rnd.nextInt(max - min);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Problem(
                            id: counterId.toString(),
                            category: 'Ceramic',
                            price: r.toString(),
                          ),
                        ),
                      );
                      setState(() {});
                    },
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/cerm.png',
                            height: 150,
                            width: 150,
                          ),
                          Text(
                            'Ceramic',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Price: \$100-\$1000',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 90,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      int min = 50;
                      int max = 500;
                      Random rnd = new Random();
                      int r = min + rnd.nextInt(max - min);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Problem(
                            id: counterId.toString(),
                            category: 'Alumital',
                            price: r.toString(),
                          ),
                        ),
                      );
                      setState(() {});
                    },
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/alu.png',
                            height: 150,
                            width: 150,
                          ),
                          Text(
                            'Alumital',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Price: \$50-\$500',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      int min = 200;
                      int max = 800;
                      Random rnd = new Random();
                      int r = min + rnd.nextInt(max - min);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Problem(
                            id: counterId.toString(),
                            category: 'Plumber',
                            price: r.toString(),
                          ),
                        ),
                      );
                      setState(() {});
                    },
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/plum.eng.png',
                            height: 150,
                            width: 150,
                          ),
                          Text(
                            'Plumber',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Price: \$200-\$800',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
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
    );
  }
}
