import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ThirdPage extends StatefulWidget {
  static const String routeName = "ThirdPage";

  ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  List<String> choicesList = ["Discover", "News", "Most Viewed", "Saved"];
  int defaultChoiceIndex = 0;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F9FC),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 70,
        leading: SizedBox(),
        leadingWidth: 120,
        centerTitle: true,
        title: Row(
          children: [
            Image.asset("assets/images/logo2.png"),
            SizedBox(
              width: 5,
            ),
            Text(
              "Alice Care",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.transparent)),
                    isDense: true,
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(
                      Icons.search,
                      size: 20,
                    ),
                    hintText: "Articles, Video, Audio and More,...",
                    hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF667085))),
              ),
              SizedBox(
                height: 20,
              ),
              Wrap(
                spacing: 8.0,
                children: choicesList.map((choice) {
                  int index = choicesList.indexOf(choice);
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: ChoiceChip(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(999)),
                      padding: EdgeInsets.only(right: 10, left: 10),
                      labelPadding: EdgeInsets.all(2.0),
                      label: Text(
                        choicesList[index],
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(color: Color(0xFF667085), fontSize: 16),
                      ),
                      selected: defaultChoiceIndex == index,
                      selectedColor: Color(0xFFD6BBFB),
                      showCheckmark: false,
                      backgroundColor: Color(0xFFE4E7EC),
                      side: BorderSide.none,
                      onSelected: (value) {
                        setState(() {});
                      },
                    ),
                  );
                }).toList(),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hot topics",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "see more >",
                      style: TextStyle(
                          color: Color(0xFF5925DC),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
              Container(
                child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                  ),
                  items: [
                    Container(
                      width: 326,
                      height: 160,
                      child: Image.asset("assets/images/image.png"),
                    ),
                    Container(
                      width: 326,
                      height: 160,
                      child: Image.asset("assets/images/image2.png"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Get Tips",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 196,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFF2F4F7)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/doctor.png",
                      height: 168.14,
                      width: 110.69,
                    ),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Connect with doctors & \n get suggestions",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 14),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Connect now and get \n expert insights ",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 14),
                        ),
                        SizedBox(height: 10),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF7F56D9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                            )
                          ),
                            onPressed: () {},
                            child: Text(
                              "View detail",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ))
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Cycle Phases and Period",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "see more >",
                      style: TextStyle(
                          color: Color(0xFF5925DC),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
        bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor: Color(0xFF6941C6),
      unselectedItemColor: Color(0xFF667085),
      iconSize: 18,
      currentIndex: index,
      onTap: (value) {
        index = value;
        setState(() {});
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.calendar_today_outlined), label: "Today"),
        BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: "Insights"),
        BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline), label: "Chat"),
      ],
    ),
    );
  }
}
