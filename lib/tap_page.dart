import 'package:flutter/material.dart';
import 'package:instagram_clone/account_page.dart';
import 'package:instagram_clone/home_page.dart';
import 'package:instagram_clone/search_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

class TabPage extends StatefulWidget {
  final FirebaseUser user;  // 유저 정보 체크

  TabPage(this.user);

  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {

  int _selectedIndex = 0; //현재 상태를 알수 있는 변수 설정

  List _pages = [
    HomePage(),
    SearchPage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _pages[_selectedIndex],),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,  //하단 선택바 _ 색상 수정 -> 블랙
        onTap: onItemTapped,
          currentIndex: _selectedIndex,
          items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),title: Text('Home')
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.search),title: Text('Search')
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),title: Text('Account')
        )
      ]),
    );

  }

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
