import 'package:flutter/material.dart';
import 'package:untitled23/Feedback.dart';
class CheckOut extends StatelessWidget{
  static const String  id ='CheckOut2';
  @override
  Widget build(BuildContext context) {
    var isTypeSelected =true;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 2.0,
        centerTitle: true,
        title: Text(
          "Checkout",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: BackButton(color:Colors.black,),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Please select the type of the payment",
              style: TextStyle(
                color: Color(0xFFC5C5C5),
              ),
            ),
            SizedBox(height: 25.0),
            GestureDetector(
              child: buildCheckItem(
                  title: "Cash", isSelected: isTypeSelected =true),
              onTap: () {

              },
            ),

            Spacer(),
            Row(
              children: [
                FlatButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>feedback()));
                  },
                  child: Text(
                    "SUBMIT",
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
    );
  }
  buildNumberField(var input) {
    return TextField(
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(10.0,0.0,0.0,0.0),

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