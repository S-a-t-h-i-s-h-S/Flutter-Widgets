import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final _formkey = GlobalKey<FormState>();
  //-----------------Function--------------------
  trysubmit() {
    final isValid = _formkey.currentState!.validate();
    if (isValid) {
      _formkey.currentState!.save;
      return submitform();
    } else {
      print('error');
    }
  }

  submitform() {
    Text(firstname);
    Text(lastname);
    Text(email);
    Text(password);
  }

  String firstname = '';
  String lastname = '';
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Form(
              key: _formkey,
              child: Column(children: [
                TextFormField(
                  decoration: InputDecoration(hintText: 'Enter First Name'),
                  key: ValueKey('firstname'),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return 'First name should not be empty';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    firstname = value.toString();
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Enter Last Name'),
                  key: ValueKey('lastname'),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return 'Last name should not be empty';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    lastname = value.toString();
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Enter Email'),
                  key: ValueKey('email'),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return 'Email should not be empty';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    email = value.toString();
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(hintText: 'Enter Password'),
                  key: ValueKey('password'),
                  validator: (value) {
                    if (value.toString().length < 5) {
                      return 'Minimum length should be 5';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    password = value.toString();
                  },
                ),
                TextButton(
                    onPressed: () {
                      trysubmit();
                    },
                    child: Text('Submit'))
              ])),
        ),
      ),
    );
  }
}
