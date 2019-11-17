import 'package:flutter/material.dart';
import 'placeholder_widget.dart';


class Home extends StatefulWidget {
 @override
 State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeWidget(Colors.white),
    MessagesWidget(Colors.blue),
    ProfileWidget(Colors.deepOrange),
    AddWidget(Colors.blueGrey)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SLOCERIES'),
      ),
      body: _children[_currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Colors.green,
            title: Text('Home'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            backgroundColor: Colors.green,
            title: Text('Messages'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.person),
            backgroundColor: Colors.green,
            title: Text('Profile'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.add),
            backgroundColor: Colors.green,
            title: Text('Test'),
          ),
        ],
      ),
      
    );
  }
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}