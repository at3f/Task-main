import 'package:flutter/material.dart';
class OurServices extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return Scaffold(      appBar: AppBar(leading: BackButton(color:Colors.black,),),

      body:Padding(padding: EdgeInsets.all(50),
  child: SingleChildScrollView(
    child:Column(
      mainAxisAlignment:MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
  SizedBox(height:10.0,
  ),
  TextFormField(decoration: InputDecoration(
    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(
        Radius.circular(20.0)),
      ),
    hintText:'  Choose Category',
  contentPadding: EdgeInsets.all(0.0),
    suffixIcon:Icon(Icons.search),
    border:OutlineInputBorder(
    ),
  ),
  ), Column(
        mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [ SizedBox(
        height: 0,
      ),

        SizedBox(
          height: 25.0,
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
        Image.network(
          'https://files.fm/thumb_show.php?i=vtsmrupvs',
          width: 70,
          height: 100,
          fit: BoxFit.cover,
        ),
                  Text('Carpenters',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color:Colors.blue
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 90.0,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(child:
                Image.network(
                'https://files.fm/thumb_show.php?i=rgbxv2x2j',
                width: 70,
                height: 100,
                fit: BoxFit.cover,
              )),

                        Text('Blacksmith ',
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color:Colors.blue
                          ),
                        ),
                      ],
                    ),
                  ] ),

              SizedBox(
                height: 10,
              ),
            ] ),
      Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ SizedBox(
            height: 0,
          ),

            SizedBox(
              height: 25.0,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Image.network(
                        'https://files.fm/thumb_show.php?i=sgbx6qjex',
                        width: 70,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      Text('Electrician',
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color:Colors.blue
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 80.0,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Image.network(
                              'https://files.fm/thumb_show.php?i=csg2xunhr',
                              width: 70,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            Text(' Construction',
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color:Colors.blue
                              ),
                            ),
                          ],
                        ),
                      ] ),
                  SizedBox(
                    height: 10,
                  ),
                ] ),
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [ SizedBox(
                  height: 0,
                ),

                  SizedBox(
                    height: 25.0,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Image.network(
                              'https://files.fm/thumb_show.php?i=yt44wkpfk',
                              width: 70,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            Text(' Paint',
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color:Colors.blue
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 115.0,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Image.network(
                                    'https://files.fm/thumb_show.php?i=vnkhzwrn2',
                                    width: 70,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                  Text(' Cleaner',
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                        color:Colors.blue
                                    ),
                                  ),
                                ],
                              ),
                            ] ),
                        SizedBox(
                          height: 10,
                        ),
                      ] ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [ SizedBox(
                        height: 0,
                      ),

                        SizedBox(
                          height: 25.0,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Image.network(
                                    'https://files.fm/thumb_show.php?i=wpgamwk7e',
                                    width: 70,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                  Text('Conditioning ',
                                    style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold,
                                        color:Colors.blue
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 90.0,
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      children: [
                                        Image.network(
                                          'https://files.fm/thumb_show.php?i=23s9jrckc',
                                          width: 70,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                        Text('Ceramic',
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                              color:Colors.blue
                                          ),
                                        ),
                                      ],
                                    ),
                                  ] ),SizedBox(
                                height: 10,
                              ),
                            ] ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [ SizedBox(
                              height: 0,
                            ),

                              SizedBox(
                                height: 25.0,
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      children: [
                                        Image.network(
                                          'https://files.fm/thumb_show.php?i=r3ka6h339',
                                          width: 80,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                        Text('Alumital',
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                              color:Colors.blue
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width:110.0,
                                    ),
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            children: [
                                              Image.network(
                                                'https://files.fm/thumb_show.php?i=9vet2agnr',
                                                width: 70,
                                                height: 100,
                                                fit: BoxFit.cover,
                                              ),
                                              Text('Plumber',
                                                style: TextStyle(
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.bold,
                                                    color:Colors.blue
                                                ),
                                              ),
                                            ],
                                          ),
                                        ] ),
  ]),

    ])
  ])
  ])
  ])
  ])
 ] )
  ),
  ),
  );
  }

}
