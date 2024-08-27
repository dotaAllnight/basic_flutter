import 'package:flutter/material.dart';
import 'package:myapp2/pages/home_page.dart';
import 'package:myapp2/pages/profile_page.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> { 
  int currentPage = 0;

  List<Widget> pages= const [
    HomePage(),
    ProfilePage(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(currentPage),
      bottomNavigationBar: NavigationBar(
      destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),

          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profile',
          )
      ],

      selectedIndex: currentPage,
      onDestinationSelected: (int value) {
        setState(() {
           currentPage = value;
        });
       
      },
      ),
    );
  }
}