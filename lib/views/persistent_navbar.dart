import 'package:flutter/material.dart';
import 'package:mess_app/views/home_page.dart';
import 'package:mess_app/views/landing_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedIndex = 0;
  List<Widget> Screens = [HomePage(), LandingPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          label: "A",
          icon: IconButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
              icon: const Icon(Icons.home)),
        ),
        BottomNavigationBarItem(
          label: "B",
          icon: IconButton(
              onPressed: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
              icon: const Icon(Icons.home)),
        )
      ]),
      body: Screens[selectedIndex],
    );
  }
}
