import 'dart:ui';

import 'package:flutter/material.dart';

class CloningUI extends StatefulWidget {
  const CloningUI({super.key});

  @override
  State<CloningUI> createState() => _CloningUIState();
}

class _CloningUIState extends State<CloningUI> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                    child: Container(
                  height: 500,
                  //color: Colors.yellow,
                  child: Stack(
                    children: [
                      Positioned(
                          child: Container(
                        height: 450,
                        //color: Colors.red,

                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://s3-cdn.designerjourneys.com/expert/1522/images/proposal/9469/908x396/media/banner-Madrid-rooftop2-1536394587883.webp'))),
                      )),
                      Positioned(
                          bottom: 0,
                          right: 24,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fpbs.twimg.com%2Fprofile_images%2F974736784906248192%2FgPZwCbdS.jpg&f=1&nofb=1&ipt=70d026e0eec2662383c1144ac1ae8a088bcf89d76d0eb7e410ca5aecaa569749&ipo=images'),
                            radius: 50,
                          )),
                      Positioned(
                        left: 20,
                        bottom: 400,
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                        right: 20,
                        bottom: 400,
                        child: Icon(
                          Icons.favorite_outline_outlined,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ))
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Madrid City Tour For Designer',
                    style:
                        TextStyle(fontSize: 30.7, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Take a look at our selection of awesome city tours',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  )
                ],
              ),
            ),
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  rowIconText('20', Icons.favorite_rounded),
                  rowIconText('32', Icons.upload),
                  rowIconText('84', Icons.message),
                  rowIconText('295', Icons.face)
                ],
              ),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "On this incredible 10-day journey you'll not only discover Spain's majestic capital but also its culinary, historic and ancient capitals. On this northern Spain tour you’ll explore its best-preserved medieval towns and picturesque wine regions.",
                style: TextStyle(height: 1.5, letterSpacing: 1.0),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget rowIconText(String text, IconData icon) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 5,
        ),
        Icon(icon)
      ],
    );
  }
}
