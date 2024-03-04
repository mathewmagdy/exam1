import 'package:exam/second_page.dart';
import 'package:exam/third_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FirstPage extends StatefulWidget {
  static const String routeName = "FirstPage";

  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int index = 0;
  int height = 56;
  int width = 151;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/images/logo.png"),
        title: Text(
          "Moody",
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 24),
        ),
        actions: [
          Icon(
            Icons.notifications_outlined,
            size: 25,
          ),
          SizedBox(width: 20,)
        ],
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    InkWell(onTap: () {
                    },
                        child: Image.asset("assets/images/love.png")),
                    Text(
                      "Love",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                    )
                  ],
                ),
                SizedBox(width: 30,),
                Column(
                  children: [
                    InkWell(onTap: () {
                    },
                        child: Image.asset("assets/images/cool.png")),
                    Text(
                      "Cool",
                      style:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                    )
                  ],
                ),
                SizedBox(width: 30,),
                Column(
                  children: [
                    InkWell(onTap: () {
                    },
                        child: Image.asset("assets/images/happy.png")),
                    Text(
                      "Happy",
                      style:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                    )
                  ],
                ),
                SizedBox(width: 30,),
                Column(
                  children: [
                    InkWell(onTap: () {
                    },
                        child: Image.asset("assets/images/sad.png")),
                    Text(
                      "Sad",
                      style:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                    )
                  ],
                ),
              ],
            ),
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
                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThirdPage()),
                  ),
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
              height: 30,
            ),
            Center(
                child: Image.asset(
              "assets/images/feature.png",
              width: 326,
              height: 168,
            )),
            SizedBox(
              height: 10,
            ),
            Center(
              child: SmoothPageIndicator(
                  controller: PageController(), // PageController
                  count: 3,
                  effect: WormEffect(), // your preferred effect
                  onDotClicked: (index) {}),
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
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage()),
                  ),
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
            Expanded(
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                crossAxisCount: 2,
                childAspectRatio: (width/height),

                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(16),
                    color: Color(0xFFF9F5FF),
                    child:Row(
                      children: [
                        Image.asset("assets/images/relax.png",width: 24,height: 24,),
                        SizedBox(width: 10,),
                        Text("Relaxation",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    color: Color(0xFFFDF2FA),
                    child:Row(
                      children: [
                        Image.asset("assets/images/med.png",width: 24,height: 24,),
                        SizedBox(width: 10,),
                        Text("Meditation",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    color: Color(0xFFFFFAF5),
                    child:Row(
                      children: [
                        Image.asset("assets/images/relax.png",width: 24,height: 24,),
                        SizedBox(width: 10,),
                        Text("Breathing",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    color: Color(0xFFF0F9FF),
                    child:Row(
                      children: [
                        Image.asset("assets/images/yoga.png",width: 24,height: 24,),
                        SizedBox(width: 10,),
                        Text("Yoga",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)
                      ],
                    ),
                  ),
                ],
              ),
            )
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
        currentIndex: index,
        onTap: (value) {
          index = value;
          setState(() {});
        },
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
