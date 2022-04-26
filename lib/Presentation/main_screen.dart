import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Pages/Home/home_page.dart';
import 'Pages/Profile/profile_page.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late PageController _pageController=PageController();
  //for tabs
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          //drawer: Drawer(),
          body: SizedBox.expand(
            child: PageView(
              physics: NeverScrollableScrollPhysics(),
              controller: _pageController,
              onPageChanged: (index) {
                setState(() => _currentIndex = index);
              },
              children: <Widget>[
                HomePage(),
                ProfilePage(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Color(0xFF0180F5),
            unselectedLabelStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),
            selectedLabelStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() => _currentIndex = index);
              _pageController.jumpToPage(index);
            },
            items: const [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/icons/home.png",),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/icons/profile.png"),
                ),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}


