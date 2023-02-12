import 'package:flutter/material.dart';
import 'package:flutter_stateful/widgets/Alert.dart';
import 'package:flutter_stateful/widgets/Dismissible.dart';
import 'package:flutter_stateful/widgets/Drawer.dart';
import 'package:flutter_stateful/widgets/List_Grid.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  int selectedindex = 0;
  PageController pageController = PageController();
  // List<Widget> widgets = [
  //   Text('Home'),
  //   Text('Add'),
  //   Text('Search'),
  //   Text('Profile'),
  // ];
  void onTapped(int index) {
    setState(() {
      selectedindex = index;
    });
    pageController.jumpToPage(index);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.blue,
      //   title: Text('Bottom Nav'),
      // ),
      body: PageView(
        controller: pageController,
        children: [
          AlertWidget(),
          DrawerWidget(),
          ListGrid(),
          DismissibleWidget()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile')
        ],
        currentIndex: selectedindex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: onTapped,
      ),
    );
  }
}
