import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled23/devliery.dart';
import 'package:untitled23/main.dart';

import 'Feedback.dart';

class Details extends StatelessWidget {
  static const String id = "Details";
  List<bool> isTypeSelected = [false, true];
  @override
  Widget build(BuildContext context) {
    List<DocumentSnapshot<Map<String, dynamic>>> orders = [];

    Stream<void> readCartData() {
      return FirebaseFirestore.instance
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .collection('cart')
          .snapshots()
          .map(
        (babySitter) {
          orders = [];
          babySitter.docs.forEach(
            (element) {
              orders.add(element);
            },
          );
        },
      );
    }

    List<Map<String, dynamic>> checkOutOrders = [];

    Future createOrder() async {
      showDialog(
        context: context,
        builder: (context) => Center(
          child: CircularProgressIndicator(),
        ),
      );
      try {
        final docUser = FirebaseFirestore.instance
            .collection('users')
            .doc(FirebaseAuth.instance.currentUser!.uid)
            .collection('orders');

        orders.forEach((element) {
          checkOutOrders.add({
            'category': element['category'],
            'id': element['id'],
            'price': element['price'],
            'location': element['location'],
            'problemDescription': element['problemDescription'],
          });
        });
        checkOutOrders.forEach((element) async {
          await docUser.add(element);
        });
        var collection = FirebaseFirestore.instance
            .collection('users')
            .doc(FirebaseAuth.instance.currentUser!.uid)
            .collection('cart');
        var snapshots = await collection.get();
        for (var doc in snapshots.docs) {
          await doc.reference.delete();
        }
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => feedback(),
          ),
        );
      } on FirebaseAuthException catch (e) {
        print(e);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              e.message.toString(),
            ),
          ),
        );
      } on FirebaseException catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              e.message.toString(),
            ),
          ),
        );
      }
    }

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 2.0,
        centerTitle: true,
        title: Text(
          "Details",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: BackButton(
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        primary: true,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Please check your cart",
                style: TextStyle(
                  color: Color(0xFFC5C5C5),
                ),
              ),
              SizedBox(height: 25.0),
              StreamBuilder<void>(
                  stream: readCartData(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    return ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: orders.length,
                        itemBuilder: ((context, index) => cardWidget(
                              context: context,
                              title: orders[index]['category'],
                              subtitle: orders[index]['id'],
                              price: orders[index]['price'],
                            )));
                  }),
              Row(
                children: [
                  FlatButton(
                    onPressed: createOrder,
                    child: Text(
                      "CHECKOUT",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                    color: Color(0xFFE5E5E5),
                    padding: EdgeInsets.all(16.0),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  buildNumberField(var input) {
    return TextField(
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
        hintStyle: TextStyle(
          fontSize: 14.0,
          color: Color(0xFFC5C5C5),
        ),
        hintText: input,
        border: OutlineInputBorder(),
      ),
    );
  }

  Widget buildCheckItem({required String title, required bool isSelected}) {
    return Container(
      padding: const EdgeInsets.all(6.0),
      child: Row(
        children: [
          Icon(
            isSelected ? Icons.check_circle : Icons.circle,
            color: isSelected ? Colors.blue : Colors.grey,
          ),
          SizedBox(width: 10.0),
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: isSelected ? Colors.blue : Colors.grey),
          ),
        ],
      ),
    );
  }
}

Widget cardWidget({
  required BuildContext context,
  required String title,
  required String subtitle,
  required String price,
}) {
  return Column(
    children: [
      Material(
        elevation: 2.0,
        borderRadius: BorderRadius.circular(18.0),
        child: Container(
          width: MediaQuery.of(context).size.width - 30.0,
          height: 130.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18.0),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          title,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0),
                        ),
                        leading: Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(color: Colors.black, width: 1),
                              image: DecorationImage(image: AssetImage(''))),
                        ),
                        subtitle: Text(
                          'ID: $subtitle',
                          style: TextStyle(color: Colors.grey, fontSize: 12.0),
                        ),
                        trailing: Container(
                          width: 80.0,
                          height: 25.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.grey[300]),
                          child: Center(
                            child: Text(
                              'Select',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 12.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text(
                                  '\$$price',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 5.0,
                  height: 45.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      SizedBox(
        height: 10,
      )
    ],
  );
}
