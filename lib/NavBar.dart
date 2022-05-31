import 'package:flutter/material.dart';
import 'package:untitled23/About%20US.dart';
import 'package:untitled23/Change%20Email.dart';
import 'package:untitled23/IN%20NavBar.dart';
  class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Drawer(

      child: ListView(
          children: [Column (children: [Row(
              mainAxisAlignment: MainAxisAlignment.start,

              children: [SizedBox(
                height: 40.0,
                width: 10,),

                Icon(Icons.local_offer_outlined),

                Text(' Offers',
                  style: TextStyle(
                      fontSize: 23.0,
                      fontWeight: FontWeight.bold,
                      color:Colors.blue
                  ),
                ),
                SizedBox(
                  height: 70.0,
                ),
              ] ),
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [SizedBox(
                  height: 20.0,
                  width: 10,),
                  Icon(Icons.notifications_active),
                  Text('  Notifications',
                    style: TextStyle(
                        fontSize: 23.0,
                        fontWeight: FontWeight.bold,
                        color:Colors.blue
                    ),
                  ),

                  SizedBox(
                    height: 70.0,
                  ),
                ]),
            Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [SizedBox(
                  height: 20.0,
                  width: 10,),
                  Icon(Icons.settings),
                  TextButton(onPressed:(){Navigator.push(context,
                      MaterialPageRoute(
                      builder: (context) =>inNav(),
                      ),);},
                    child:Text('  Settings',
                    style: TextStyle(
                        fontSize: 23.0,
                        fontWeight: FontWeight.bold,
                        color:Colors.blue
                    ),
                  ),),

                  SizedBox(
                    height: 70.0,
                  ),
                ]),
            Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [SizedBox(
                  height: 20.0,
                  width: 10,),
                  Icon(Icons.help),
                  TextButton(onPressed:(){Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) =>AboutUs(),
                    ),);},
                    child:Text('  About Us',
                      style: TextStyle(
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold,
                          color:Colors.blue
                      ),
                    ),),
                  SizedBox(
                    height: 70.0,
                  ),
                ]),

          ],

          ),

          ]),
    );
  }
}
