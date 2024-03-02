import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SecondPage extends StatelessWidget {
  static const String routeName = "SecondPage";

  SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(
          width: 10,
        ),
        leadingWidth: 10,
        title: Image.asset("assets/images/profil.png"),
        actions: [
          Icon(
            Icons.notifications_outlined,
            size: 25,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset("assets/images/info.png")),
            SizedBox(
              height: 20,
            ),
            Text(
              "Workout Programs",textAlign: TextAlign.start,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18,),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: Color(0xFF363F72),
        unselectedItemColor: Color(0xFF667085),
        iconSize: 18,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "."),
          BottomNavigationBarItem(
              icon: Icon(Icons.navigation_outlined), label: "."),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: "."),
          BottomNavigationBarItem(icon: Icon(Icons.perm_identity), label: "."),
        ],
      ),
    );
  }
}
