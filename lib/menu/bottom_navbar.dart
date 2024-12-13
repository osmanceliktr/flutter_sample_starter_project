import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;
  final List<Map<String, dynamic>> navbarMenu;

  const BottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onTap,
    required this.navbarMenu,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: onTap,
      items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.menu),
          label: 'Sidebar',
        ),
        ...navbarMenu.map((menu) {
          return BottomNavigationBarItem(
            icon: Icon(menu['icon']),
            label: menu['title'],
          );
        }),
      ],
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.blueGrey[900],
    );
  }
}
