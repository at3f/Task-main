import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:untitled23/Details.dart';
import 'package:untitled23/main.dart';

class CurrentLocation extends StatelessWidget {
  static const String id = "CurrentLocation";
  final String orderId;
  final String problemDescription;
  final String category;
  final String price;
  String longitude = '';
  String latitude = '';

  TextEditingController locationController = TextEditingController();
  CurrentLocation(
      {Key? key,
      required this.problemDescription,
      required this.category,
      required this.price,
      required this.orderId
      })
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Future addToCart() async {
      showDialog(
        context: context,
        builder: (context) => Center(
          child: CircularProgressIndicator(),
        ),
      );
      try {
        await FirebaseFirestore.instance
            .collection('users')
            .doc(FirebaseAuth.instance.currentUser!.uid)
            .collection('cart')
            .add({
          'id': orderId,
          'category': category,
          'problemDescription': problemDescription,
          'location': 'longitude: $longitude, latitude: $latitude',
          'price': price,
        });
      } on FirebaseException catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              e.message.toString(),
            ),
          ),
        );
      }
      navigatorKey.currentState!.popUntil((route) => route.isFirst);
    }

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: BackButton(
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Deliverys Address',
                style: TextStyle(
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 13.0),
              TextFormField(
                enabled: false,
                maxLines: 2,
                controller: locationController,
                decoration: InputDecoration(
                  label: Text('Delivery To :'),
                  prefixIcon: Icon(Icons.delivery_dining),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 200,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      (56.0),
                    ),
                  ),
                ),
                child: MaterialButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_location_alt,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        'Get current location',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                  onPressed: () async {
                    await getCurrentPosition();
                    locationController.text =
                        'longitude: $longitude,\nlatitude: $latitude';
                  },
                ),
              ),
              SizedBox(
                height: 60,
              ),
              ElevatedButton(
                  onPressed: () async {
                    await addToCart();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Details(),
                      ),
                    );
                  },
                  child: Text('Add to cart'))
            ],
          ),
        ));
  }

  Future<void> getCurrentPosition() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      longitude = position.longitude.toString();
      latitude = position.latitude.toString();
      print(latitude);
      print(longitude);
    } on Exception catch (e) {
      print(e);
    }
  }
}
