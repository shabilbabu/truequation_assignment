import 'package:flutter/material.dart';
import 'package:truequation_assignment/src/features/home/view/home.dart';
import 'package:truequation_assignment/src/features/kart/view/kart_view.dart';
import 'package:truequation_assignment/src/features/profile/view/profile_view.dart';
import 'package:truequation_assignment/src/features/search/view/search_page.dart';

class BottomView extends StatefulWidget {
  const BottomView({Key? key}) : super(key: key);

  @override
  State<BottomView> createState() => _BottomViewState();
}

class _BottomViewState extends State<BottomView> {
   int _currentIndex = 0;
  final List pages = [
    const HomePage(),
    const FavouritePage(),
    const KarPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 121, 30, 233),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        selectedFontSize: 11.0,
        unselectedItemColor: Colors.grey,
        unselectedFontSize: 11.0,
        currentIndex: _currentIndex,
        onTap: (newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Kart"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "profile")
        ],
      ),
    );
  }
}