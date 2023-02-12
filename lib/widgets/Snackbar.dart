import 'package:flutter/material.dart';

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snackbar'),
      ),
      body: Container(
        child: Center(
            child: ElevatedButton(
                onPressed: () {
                  final snackbar = SnackBar(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      action: SnackBarAction(
                          label: 'undo',
                          textColor: Colors.blue,
                          onPressed: () {}),
                      //backgroundColor: Color.fromARGB(255, 178, 187, 204),
                      behavior: SnackBarBehavior.floating,
                      duration: const Duration(milliseconds: 3000),
                      content: Text('This Is Snackbar'));
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
                child: Text('Show Snackbar'))),
      ),
    );
  }
}
