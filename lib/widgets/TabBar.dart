import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text('WhatsApp'),
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.chat),
                text: 'Chat',
              ),
              Tab(
                icon: Icon(Icons.chat_bubble),
                text: 'Status',
              ),
              Tab(
                icon: Icon(Icons.call),
                text: 'Call',
              )
            ]),
          ),
          body: TabBarView(children: [
            Container(
              child: Center(
                child: Text(
                  'Chats',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  'Status',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  'call',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            )
          ]),
        ));
  }
}
