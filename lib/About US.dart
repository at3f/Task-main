import 'package:flutter/material.dart';
import 'package:untitled23/devliery.dart';
class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        backgroundColor:Colors.white,
        appBar:AppBar(
          backgroundColor: Colors.white,
          leading: BackButton(color:Colors.black,),),
        body:Padding(
          padding:const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(26),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: Text("mobile application can be installed in all mobile phones around the world to cover lacking area by providing services likepainting, carpentry, plumbing and so on. Its area depends on services.the aim of the project is to serve the society and to reduce unemployment and provide safety to all families by saving time ina safe and secure way. This is done by employing all kinds of workers indifferent places through this app'",style: TextStyle(
                  fontSize: 19,
                ),),
              ),
              
            ],
          ),
        )
    );
  }
}
