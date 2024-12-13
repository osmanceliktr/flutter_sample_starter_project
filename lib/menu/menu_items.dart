import 'package:flutter/material.dart';
import 'package:sample_stater_project/pages/dashboard.dart';
import 'package:sample_stater_project/pages/profile.dart';
import 'package:sample_stater_project/pages/settings.dart';
import 'package:sample_stater_project/pages/message.dart';
import 'package:sample_stater_project/pages/notification.dart';
import 'package:sample_stater_project/pages/help.dart';
import 'package:sample_stater_project/pages/about.dart';
import 'package:sample_stater_project/pages/logout.dart';
import 'package:sample_stater_project/pages/home.dart';
import 'package:sample_stater_project/pages/search.dart';
import 'package:sample_stater_project/pages/favorite.dart';
import 'package:sample_stater_project/pages/account.dart';

final List<Map<String, dynamic>> sidebarMenu = [
  {'icon': Icons.dashboard, 'title': 'Dashboard', 'page': const DashboardPage()},
  {'icon': Icons.person, 'title': 'Profile', 'page': const ProfilePage()},
  {'icon': Icons.settings, 'title': 'Settings', 'page': const SettingPage()},
  {'icon': Icons.message, 'title': 'Messages', 'page': const MessagePage()},
  {'icon': Icons.notifications, 'title': 'Notifications', 'page': const NotificationPage()},
  {'icon': Icons.help, 'title': 'Help', 'page': const HelpPage()},
  {'icon': Icons.info, 'title': 'About Us', 'page': const AboutPage()},
  {'icon': Icons.logout, 'title': 'Logout', 'page': const LogoutPage()},
];

final List<Map<String, dynamic>> navbarMenu = [
  {'icon': Icons.home, 'title': 'Home', 'page': const HomePage()},
  {'icon': Icons.search, 'title': 'Search', 'page': const SearchPage()},
  {'icon': Icons.favorite, 'title': 'Favorites', 'page': const FavoritePage()},
  {'icon': Icons.account_circle, 'title': 'Account', 'page': const AccountPage()},
];
