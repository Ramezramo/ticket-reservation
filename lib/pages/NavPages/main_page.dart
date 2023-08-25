import 'package:flutter/material.dart';
import 'package:testing_new_tools/pages/NavPages/homePage.dart';
import 'package:testing_new_tools/pages/NavPages/my_page.dart';
import 'package:testing_new_tools/pages/NavPages/search_page.dart';

import '../../widgets/myDrawer.dart';
import 'bar_item_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    baritemPage(),
    SearchPage(),
    MyPage(),
  ];

  int currentIndex = 0 ;
  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.apps,),
            label: 'Home',
            // backgroundColor: Colors.black87,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_sharp),
            label: 'Bar',
            // backgroundColor: Colors.black87,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,),
            label: 'Search',
            // backgroundColor: Colors.black87,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,),
            label: 'My',
            // backgroundColor: Colors.black87,
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.home),
          //   label: 'Home1',
          //   backgroundColor: Colors.black87,
          // ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.home),
          //   label: 'Home',
          //   backgroundColor: Colors.black87,
          // ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.home),
          //   label: 'Home',
          //   backgroundColor: Colors.white,
          // ),

          // BottomNavigationBarItem(tooltip: "app name",icon: Icon(Icons.apps)),
          // BottomNavigationBarItem(tooltip: "app name",icon: Icon(Icons.bar_chart_sharp)),
          // BottomNavigationBarItem(icon: Icon(Icons.search)),
          // BottomNavigationBarItem(icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
