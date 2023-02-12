import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({super.key});

  @override
  State<ListGrid> createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
  List<String> fruits = ['Orange', 'Apple', 'Banana', 'Grapes'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List & Grid'),
        elevation: 8,
        backgroundColor: Colors.red,
      ),
      body: Container(
        // child: ListView.builder(
        //     itemCount: fruits.length,
        //     itemBuilder: ((context, index) => Card(
        //           child: ListTile(
        //             leading: Icon(Icons.account_tree_sharp),
        //             title: Text(fruits[index]),
        //           ),
        //         )))
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 2 / 2,
          ),
          children: [
            Card(
              child: Center(child: Text('Orange')),
            ),
            Card(
              child: Center(child: Text('Orange')),
            ),
            Card(
              child: Center(child: Text('Orange')),
            ),
            Card(
              child: Center(child: Text('Orange')),
            ),
            Card(
              child: Center(child: Text('Orange')),
            ),
            Card(
              child: Center(child: Text('Orange')),
            ),
            Card(
              child: Center(child: Text('Orange')),
            ),
            Card(
              child: Center(child: Text('Orange')),
            ),
            Card(
              child: Center(child: Text('Orange')),
            ),
            Card(
              child: Center(child: Text('Orange')),
            ),
          ],
        ),
      ),
    );
  }
}
