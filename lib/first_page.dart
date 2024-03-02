import 'package:badges/badges.dart';
import 'package:exam/second_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FirstPage extends StatelessWidget {
  static const String routeName = "FirstPage";

  FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/images/logo.png"),
        title: Text(
          "Moody",
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 24),
        ),
        actions: [Icon(Icons.notifications_outlined, size: 25,)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello, Sara Rose",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "How are you feeling today ?",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 20,
            ),
            Center(child: Image.asset("assets/images/emo.png")),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Feature",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
                SizedBox(
                  width: 200,
                ),
                Text(
                  "see more >",
                  style: TextStyle(
                      color: Color(0xFF027A48),
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Center(child: Image.asset(
                "assets/images/feature.png", width: 326, height: 168,)),
            SizedBox(
              height: 10,
            ),
            Center(
              child: SmoothPageIndicator(controller: PageController(),// PageController
                  count:  3,
                  effect:  WormEffect(),  // your preferred effect
                  onDotClicked: (index){

                  }
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  "Exercise",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
                SizedBox(
                  width: 200,
                ),
                InkWell(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()),),
                  child: Text(
                    "see more >",
                    style: TextStyle(
                        color: Color(0xFF027A48),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Center(child: Image.asset("assets/images/ex1.png")),
            SizedBox(
              height: 20,
            ),
            Center(child: Image.asset("assets/images/ex2.png")),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: Color(0xFF027A48),
        unselectedItemColor: Color(0xFF667085),
        iconSize: 18,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "."),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: "."),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_outlined), label: "."),
          BottomNavigationBarItem(icon: Icon(Icons.perm_identity), label: "."),
        ],
      ),
    );
  }
}
