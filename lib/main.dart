import 'package:mamolang_travel_news_app/screens/home_page.dart';
import 'package:mamolang_travel_news_app/screens/news_details.dart';
import 'package:mamolang_travel_news_app/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const NewsDetail(),
    const MyProfile(),
    const MyProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/profile': (context) => const MyProfile(),
        '/news': (context) => const NewsDetail(),
        '/home': (context) => const HomePage()
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFFCFCFC),
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _selectedIndex,
          onTap: (value) {
            setState(() {
              _selectedIndex = value;
            });
          },
          iconSize: 30,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(_selectedIndex == 0
                    ? 'assets/home_selected_icon.svg'
                    : 'assets/home_unselected_icon.svg'),
                label: '1'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(_selectedIndex == 1
                    ? 'assets/bookmark_selected_icon.svg'
                    : 'assets/bookmark_unselected_icon.svg'),
                label: '1'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(_selectedIndex == 2
                    ? 'assets/notification_selected_icon.svg'
                    : 'assets/notification_unselected_icon.svg'),
                label: '1'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(_selectedIndex == 3
                    ? 'assets/profile_selected_icon.svg'
                    : 'assets/profile_unselected_icon.svg'),
                label: '1')
          ],
        ),
      ),
    );
  }
}
