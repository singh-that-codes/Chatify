import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttter_test_application/pages/home_page.dart';
import 'package:fluttter_test_application/pages/profile_page.dart';
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/home.svg',),label: 'home'),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/favourite.svg',),label: 'favourite'),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/plus.svg',),label: 'addcircle'),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/message.svg',),label: 'message'),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/user.svg',),label: 'user'),
      ],
      currentIndex: currentIndex,
      onTap: (index) {
        setState((){
          currentIndex=index;
        });
      },
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor:Colors.amber, 
      ),
    );
  }
  final pages=[
    HomePage(),
    Center(child: Text('Favourite'),),
    Center(child: Text('Add Post'),),
    Center(child: Text('Message'),),
    ProfilePage(),
  ];
}