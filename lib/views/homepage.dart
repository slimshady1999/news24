// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:news24/customWidgets/homePageWidget/bottomNavigationBarWidgets/accountBottomBarSection/newsLetterSignup.dart';
import 'package:news24/customWidgets/homePageWidget/bottomNavigationBarWidgets/categoryBottomBarSection/categoryPage.dart';
import 'package:news24/customWidgets/homePageWidget/bottomNavigationBarWidgets/homeBottomBarSection/newsHomeSection.dart';
import '../customWidgets/drawerWidget/drawer.dart';
import 'trendsPages/trendspage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> pages = const [
    NewsHomePage(),
    TrendsPage(),
    CategoryPage(),
    NewsLetter()
  ];
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: const Color.fromARGB(255, 19, 103, 247),
        title: const Text("News247",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w900,
              color: Color.fromARGB(255, 19, 103, 247),
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset("images/bluelogo.png", height: 40, width: 40),
          )
        ],
      ),
      drawer: const Drawer(
        child: CustomDrawerWidget(),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 19, 103, 247),
          elevation: 0,
          selectedItemColor: const Color.fromARGB(255, 19, 103, 247),
          showSelectedLabels: false,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w900,
            // color: Color.fromARGB(255, 19, 103, 247),
          ),
          currentIndex: _currentIndex,
          onTap: _tapped,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.trending_up_sharp), label: "trends"),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: "category"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "account"),
          ]),
      body: pages[_currentIndex],
    );
  }

  void _tapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
