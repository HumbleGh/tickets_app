import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tickets_app/screens/homepage.dart';

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
                icon: Icon(Iconsax.home),
                activeIcon: Icon(Iconsax.home4),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Iconsax.search_normal),
                activeIcon: Icon(Iconsax.search_favorite),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Iconsax.ticket_24),
                activeIcon: Icon(Iconsax.ticket),
                label: 'Tickets'),
            BottomNavigationBarItem(
                icon: Icon(Iconsax.profile_add),
                activeIcon: Icon(Icons.person),
                label: 'Profile'),
          ]),
    );
  }
}
