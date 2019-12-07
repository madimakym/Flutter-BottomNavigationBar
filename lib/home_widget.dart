import 'package:flutter/material.dart';
import 'package:portfolio/FirstPage.dart';
import 'package:portfolio/SecondPage.dart';
import 'package:portfolio/ThirdPage.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [First(), Second(), Third()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('General'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Compétences'),
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.folder), 
              title: Text('Portfolio'))
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
