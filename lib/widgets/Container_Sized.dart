import 'package:flutter/material.dart';

class Container_Sized extends StatelessWidget {
  const Container_Sized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Container and Sized box'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          //color: Colors.amberAccent,
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              boxShadow: [
                BoxShadow(blurRadius: 20, spreadRadius: 20, color: Colors.black)
              ]),
          child: Center(
            child: Text(
              'Hello',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
