import 'package:flutter/material.dart';
import 'package:lost_and_found_flutter_app/features/home/view/screens/home_screen.dart';

class RootHomePage extends StatefulWidget {
  const RootHomePage({super.key});

  @override
  State<RootHomePage> createState() => _RootHomePageState();
}

class _RootHomePageState extends State<RootHomePage> {
  int _selectedIndex = 0;

  List<Widget> screens = <Widget>[
    const HomeScreen(),
    //const ReportScreen(),
    //const ChatScreen(),
    //const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueAccent,
        selectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_box_rounded),
          label: 'Report',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ]),
    );
  }
}
