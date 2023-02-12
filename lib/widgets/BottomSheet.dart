import 'dart:ui';

import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Bottom Sheet Widget',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                enableDrag: true,
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                context: context,
                builder: (context) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: Text('Orange'),
                        subtitle: Text('Fruits'),
                      ),
                      ListTile(
                        title: Text('Apple'),
                        subtitle: Text('Fruits'),
                      ),
                      ListTile(
                        title: Text('Grapes'),
                        subtitle: Text('Fruits'),
                      ),
                      ListTile(
                        title: Text('Mango'),
                        subtitle: Text('Fruits'),
                      ),
                      ListTile(
                        title: Text('Banana'),
                        subtitle: Text('Fruits'),
                      ),
                    ],
                  );
                },
              );
            },
            child: Text('Click Here')),
      ),
    );
  }
}
