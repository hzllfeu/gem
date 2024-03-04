import 'package:flutter/material.dart';
import 'package:gem/ChatPage.dart';
import 'package:gem/Exemple.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:swipe_cards/swipe_cards.dart';
import 'CardPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    CardPage(),
    Example(),
    ChatPage(),
    Text('Profile'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: SafeArea(
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                PhosphorIcons.houseFill,
                size: 30.0,
                color: _selectedIndex == 0 ? Colors.redAccent : Colors.grey, // Modifier la couleur selon l'index sélectionné
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                PhosphorIcons.heartFill,
                size: 30.0,
                color: _selectedIndex == 1 ? Colors.redAccent : Colors.grey,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                PhosphorIcons.chatCircleTextFill,
                size: 30.0,
                color: _selectedIndex == 2 ? Colors.redAccent : Colors.grey,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                PhosphorIcons.identificationBadgeFill,
                size: 30.0,
                color: _selectedIndex == 3 ? Colors.redAccent : Colors.grey,
              ),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.redAccent,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}