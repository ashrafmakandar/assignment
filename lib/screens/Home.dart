import 'package:assignment/screens/MyTask.dart';
import 'package:assignment/screens/Profile.dart';
import 'package:assignment/screens/Summary.dart';
import 'package:assignment/screens/Todo.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> _all = [MyTask(), Todo(), Summary(), Profile()];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _all[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.grey,
        elevation: 10.0,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.today_outlined), label: "Todo"),
          BottomNavigationBarItem(
              icon: Icon(Icons.signal_cellular_alt), label: "Summary"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), label: "profile")
        ],
      ),
    );
  }
}
