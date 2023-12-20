import 'package:carrot_market_01/screens/chatting/chatting_screen.dart';
import 'package:carrot_market_01/screens/home/home_screen.dart';
import 'package:carrot_market_01/screens/my_carrot/my_carrot_screen.dart';
import 'package:carrot_market_01/screens/near_me/near_me_screen.dart';
import 'package:carrot_market_01/screens/neighborhood_life/neighborhood_life_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}


class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  // IndexedStack - 한번에 전부 로딩 된다.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomeScreen(),
          NeighborhoodLifeScreen(),
          NearMeScreen(),
          ChattingScreen(),
          MyCarrotScreen()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed, //렌더링할때 더 빠른 속도로 됨
        currentIndex: _selectedIndex, //인덱스를 공유해서 같아지게 하기.
        onTap: (index){
          print('index : $index');
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [ //아이템의 숫자는 IndexedStack의 children과 갯수가 같아야함.
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home),label: '홈'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.square_on_square),label: '동네생활'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.placemark),label: '내 근처'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_2),label: '채팅'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.person),label: '나의 당근'),
        ],
      ),
    );
  }
}
