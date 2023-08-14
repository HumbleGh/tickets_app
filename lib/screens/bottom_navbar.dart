import 'package:flutter/material.dart';
import 'package:tickets_app/screens/homepage.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIindex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const Text('Search'),
    const Text('Tickets'),
    const Text('Profile')
  ];

  void _onTappedItem(int index) {
    setState(() {
      _selectedIindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIindex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIindex,
          onTap: _onTappedItem,
          elevation: 10.0,
          showSelectedLabels: true,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.blueGrey,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentIcons.home_32_regular),
                activeIcon: Icon(FluentIcons.home_32_filled),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(FluentIcons.search_32_regular),
                activeIcon: Icon(FluentIcons.search_32_filled),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(FluentIcons.ticket_horizontal_24_regular),
                activeIcon: Icon(FluentIcons.ticket_horizontal_24_filled),
                label: 'Tickets'),
            BottomNavigationBarItem(
                icon: Icon(FluentIcons.person_32_regular),
                activeIcon: Icon(FluentIcons.person_32_filled),
                label: 'Profile'),
          ]),
    );
  }
}
