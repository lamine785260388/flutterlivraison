import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/FoodOrderPage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_application_1/animation/ScaleRoute.dart';
import 'package:flutter_application_1/pages/SignInPage.dart';
import 'package:flutter_application_1/pages/listeCommande.dart';
import 'package:flutter_application_1/pages/signintest.dart';

class BottomNavBarWidget extends StatefulWidget {
  @override
  _BottomNavBarWidgetState createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
        print(_selectedIndex);

        if (_selectedIndex == 1) {
          Navigator.push(context, ScaleRoute(page: listeCommande()));
        }
         if (_selectedIndex == 2) {
          Navigator.push(context, ScaleRoute(page: FoodOrderPage()));
        }
//        navigateToScreens(index);
      });
    }

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: ("Accueil"),
        ),
        BottomNavigationBarItem(
          
          icon: Icon(Icons.near_me),
          label: ('commande'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.card_giftcard),
          label: ('pagnet'),
        ),
        BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user), label: ('Compte')
            // title: Text(
            //   'Account',
            //   style: TextStyle(color: Color(0xFF2c2b2b)),
            // ),
            ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Color(0xFFfd5352),
      onTap: _onItemTapped,
    );
  }
}
