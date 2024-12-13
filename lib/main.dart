import 'package:flutter/material.dart';
import 'package:sample_stater_project/menu/appbar.dart';
import 'package:sample_stater_project/menu/bottom_navbar.dart';
import 'package:sample_stater_project/menu/menu_items.dart';
import 'package:sample_stater_project/menu/sidebar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedSidebarIndex = 0;
  int _selectedNavbarIndex = 0;
  bool _isSidebarExpanded = false;

  // menüler
  final List<Map<String, dynamic>> _sidebarMenu = sidebarMenu;
  final List<Map<String, dynamic>> _navbarMenu = navbarMenu;


  // Modern Sidebar
  Widget _buildSidebar() {
    return Sidebar(
      isExpanded: _isSidebarExpanded,
      selectedIndex: _selectedSidebarIndex,
      menuItems: _sidebarMenu,
      onMenuItemTap: (index) {
        setState(() {
          _selectedSidebarIndex = index;
        });
      },
      onToggle: () {
        setState(() {
          _isSidebarExpanded = !_isSidebarExpanded;
        });
      },
    );
  }
  Widget _buildBottomNavBar() {
    return BottomNavBar(
      selectedIndex: _selectedNavbarIndex,
      onTap: (index) {
        setState(() {
          _selectedNavbarIndex = index;
        });
        if (_selectedNavbarIndex == 0) {
          _isSidebarExpanded = true;
        }
      },
      navbarMenu: _navbarMenu,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          if (_isSidebarExpanded) {
            setState(() {
              _isSidebarExpanded = false;
            });
          }
        },
        child: Stack(
          children: [
            // Ana içerik
            Scaffold(
              appBar: const CustomAppBar(),
              //genel ekran
              body: _selectedNavbarIndex == 0
                  ? _sidebarMenu[_selectedSidebarIndex]['page'] as Widget
                  : _navbarMenu[_selectedNavbarIndex - 1]['page'] as Widget,
              bottomNavigationBar: _buildBottomNavBar(),
            ),
            // Sidebar
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              left: _isSidebarExpanded ? 0 : -220,
              top: 0,
              bottom: 0,
              child: GestureDetector(
                onTap: () {},
                child: _buildSidebar(),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
