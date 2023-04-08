import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({Key? key}) : super(key: key);

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  int i =0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xE6021852),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xD9021852),
                Color(0xbf021852),
                Color(0xd9021852),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,currentIndex: i,
          showUnselectedLabels: false,
          onTap: (value) {
            setState(() {
              i=value;
            });
          },
          backgroundColor: Color(0xff021852),
          items: [
            BottomNavigationBarItem(
                activeIcon:
                    Image.asset("assets/image/activehome.png", height: 25),
                backgroundColor: Color(0xff021852),
                icon: Image.asset("assets/image/home.png", height: 25),
                label: ""),
            BottomNavigationBarItem(
                backgroundColor: Color(0xff021852),

                activeIcon:
                Image.asset("assets/image/activecricket.png", height: 25),
                icon: Image.asset("assets/image/cricket.png", height: 25),
                label: ""),
            BottomNavigationBarItem(
                backgroundColor: Color(0xff021852),

                activeIcon:
                Image.asset("assets/image/activecard.png", height: 25),
                icon: Image.asset("assets/image/card.png", height: 25),
                label: ""),
            BottomNavigationBarItem(
                backgroundColor: Color(0xff021852),

                activeIcon:
                Image.asset("assets/image/activewallet.png", height: 25),
                icon: Image.asset("assets/image/wallet.png", height: 25),
                label: ""),
            BottomNavigationBarItem(
                backgroundColor: Color(0xff021852),

                activeIcon:
                Image.asset("assets/image/activegames.png", height: 25),
                icon: Image.asset("assets/image/game.png", height: 25),
                label: ""),
          ],
        ),
      ),
    );
  }
}
