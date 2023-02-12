import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key});

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String? _selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Drop Down List'),
        ),
        body: Center(
          child: Container(
            height: 70,
            width: MediaQuery.of(context).size.width,
            child: DropdownButton<String>(
              icon: Icon(Icons.arrow_circle_down),
              isExpanded: true,
              value: _selectedValue,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedValue = newValue!;
                });
              },
              items:
                  <String>['One', 'Two', 'Three', 'Four'].map((String value) {
                return DropdownMenuItem(
                  child: Text(value),
                  value: value,
                );
              }).toList(),
            ),
          ),
        ));
  }
}
