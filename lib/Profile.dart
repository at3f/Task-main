import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String name = '';
    String balance = '';
    String orders = '';
    String reviews = '';
    String coupons = '';
    Stream readUserData() {
      return FirebaseFirestore.instance
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .snapshots()
          .map(
        (user) {
          name = '${user['firstName']} ${user['lastName']}';
          balance = user['balance'];
          reviews = user['reviews'];
          coupons = user['coupons'];
        },
      );
    }

    Future<int> getNumberOfOrders() async {
      return await FirebaseFirestore.instance
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .collection('orders')
          .get()
          .then(
        (value) {
          return value.size;
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: SingleChildScrollView(
            child: StreamBuilder(
                stream: readUserData(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage(
                                  'https://www.pngall.com/wp-content/uploads/5/User-Profile-PNG-High-Quality-Image.png'),
                            ),
                            Text(
                              name,
                              style: TextStyle(
                                  fontSize: 35.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                            SizedBox(
                              height: 80.0,
                            ),
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.account_balance_wallet),
                            Text(
                              'Account Balance: $balance',
                              style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                            // Icon(Icons.exposure_zero),
                            SizedBox(
                              height: 80.0,
                            ),
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.event_note_sharp),
                            FutureBuilder(
                                future: getNumberOfOrders(),
                                builder: (context, snapshot) {
                                  orders = snapshot.data.toString();
                                  return Text(
                                    'Number Of Orders: $orders',
                                    style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue),
                                  );
                                }),
                            // Icon(Icons.exposure_zero),
                            SizedBox(
                              height: 80.0,
                            ),
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.star),
                            Text(
                              'Service Review $reviews',
                              style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                            //  Icon(Icons.exposure_zero),
                            SizedBox(
                              height: 80.0,
                            ),
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.monetization_on_sharp),
                            Text(
                              'Coupons: $coupons',
                              style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                            // Icon(Icons.exposure_zero),
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
                  );
                }),
          ),
        ),
      ),
    );
  }
}
