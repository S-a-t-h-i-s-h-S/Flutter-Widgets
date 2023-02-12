import 'dart:ui';

import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Button'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                    overlayColor: MaterialStateProperty.all(Colors.blueGrey),
                    elevation: MaterialStateProperty.all(20),
                    backgroundColor: MaterialStateProperty.all(Colors.amber)),
                onPressed: () {},
                child: Text(
                  'Press Me',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                )),
            SizedBox(height: 10),
            ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)))),
                onPressed: () {
                  print('like');
                },
                child: Text(
                  'Press me',
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 5, 27, 66)),
                ))
          ],
        ),
      ),
    );
  }
}
