import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/app_icons.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/profile_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.teal,
        selectedFontSize: 10,

        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppIcons.icHome,
              // 'assets/svg/home.svg',
              width: 20,
              height: 20,
            ),

            label: 'Home',
            //backgroundColor: Colors.blue,
            // activeIcon: Icon(Icons.home_filled),
            activeIcon: SvgPicture.asset(
              AppIcons.icHome,
              // 'assets/svg/home1.svg',
              width: 20,
              height: 20,
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppIcons.icFavorite,
              width: 25,
              height: 25,
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppIcons.icAdd,
              // 'assets/svg/search.svg',
              width: 20,
              height: 20,
            ),
            label: 'Add',
            //backgroundColor: Colors.purple,
            //activeIcon: Icon(Icons.search),
            activeIcon: SvgPicture.asset(
              AppIcons.icAdd,
              // 'assets/svg/search.svg',
              width: 23,
              height: 23,
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppIcons.icMassage,
              width: 20,
              height: 20,
            ),
            label: 'Massage',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppIcons.icUser,
              width: 25,
              height: 25,
            ),
            label: 'Profile',
            // backgroundColor: Colors.blueGrey,
          ),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(
            () {
              currentIndex = index;
            },
          );
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        // backgroundColor: Colors.red,
      ),
    );
  }

  final pages = [
    HomePage(),
    Center(child: Text('Search')),
    Center(child: Text('Massage ')),
    Center(child: Text(' Favorite')),
    ProfilePage()
  ];
}
