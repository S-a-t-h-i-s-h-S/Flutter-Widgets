import 'package:flutter/material.dart';

class InstaUI extends StatelessWidget {
  const InstaUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text(
          'wanda.s',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 200,
              //color: Colors.red,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 170,
                    //color: Colors.amber,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://avatars1.githubusercontent.com/u/99944?s=400&v=4'),
                          radius: 60,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Wanda S',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Photographer/New york',
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                    color: Colors.orange,
                  ))
                ],
              ),
            ),
            Container(
              height: 100,
              color: Colors.blue,
            ),
            Container(
              height: 100,
              color: Colors.green,
            ),
            Expanded(
                child: Container(
              color: Colors.yellow,
            ))
          ],
        ),
      ),
    );
  }
}
