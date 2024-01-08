import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:threat_awareness/presentation/common_widgets/colors.dart';
import 'package:threat_awareness/presentation/pages/disaster/disaster_page.dart';
import 'package:threat_awareness/presentation/pages/home/home_page.dart';
import 'package:threat_awareness/presentation/pages/profile/profile_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  List pages = [
    const HomePage(),
    const DisasterPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.warning),
            label: 'Disaster',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        unselectedItemColor: Colors.grey,
        currentIndex: currentIndex,
        selectedItemColor: Colors.green[800],
      ),
      body: pages[currentIndex],
    );
  }
}
