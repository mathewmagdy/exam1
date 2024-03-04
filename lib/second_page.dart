import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SecondPage extends StatefulWidget {
  static const String routeName = "SecondPage";

  SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          leading: SizedBox(),
          leadingWidth: 1,
          toolbarHeight: 250,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset("assets/images/profil.png"),
                  SizedBox(width: 100,),
                  Icon(Icons.notifications_outlined)
                ],
              ),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xFFF8F9FC)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.monitor_heart_outlined , color: Color(0xFF363F72),),
                            SizedBox(width: 3,),
                            Text("Heart Rate", style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)
                          ],
                        ),
                        SizedBox(height: 5,),
                        Text("81 PBM", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),)
                      ],
                    ),
                    VerticalDivider(
                      color: Color(0xFFD9D9D9),
                      thickness: 3,
                      endIndent: 10,
                      indent: 10,
                      width: 40,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.list , color: Color(0xFF363F72),),
                            SizedBox(width: 3,),
                            Text("To-do", style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)
                          ],
                        ),
                        SizedBox(height: 5,),
                        Text("32.5%", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),)
                      ],
                    ),
                    VerticalDivider(
                      thickness: 3,
                      color: Color(0xFFD9D9D9),
                      width: 40,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.local_fire_department_outlined , color: Color(0xFF363F72),),
                            SizedBox(width: 3,),
                            Text("Calo", style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)
                          ],
                        ),
                        SizedBox(height: 5,),
                        Text("1000 Cal", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),)
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Workout Programs",textAlign: TextAlign.start,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18,),
              ),
            ],
          ),
          bottom: TabBar(
            tabs: [
              Tab(child: Text("All Type" , style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),),
              Tab(child: Text("Full Body",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),),
              Tab(child: Text("Upper",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),),
              Tab(child: Text("Lower",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                SizedBox(height: 20,),
                Image.asset("assets/images/plank.png",height: 174,width:326 ,),
                SizedBox(height: 30,),
                Image.asset("assets/images/plank2.png",height: 174,width:326 ,),
              ],
            ),
            Column(
              children: [
                SizedBox(height: 20,),
                Image.asset("assets/images/plank.png",height: 174,width:326 ,),
                SizedBox(height: 30,),
                Image.asset("assets/images/plank2.png",height: 174,width:326 ,)
              ],
            ),
            Column(
              children: [
                SizedBox(height: 20,),
                Image.asset("assets/images/plank.png",height: 174,width:326 ,),
                SizedBox(height: 30,),
                Image.asset("assets/images/plank2.png",height: 174,width:326 ,)
              ],
            ),
            Column(
              children: [
                SizedBox(height: 20,),
                Image.asset("assets/images/plank.png",height: 174,width:326 ,),
                SizedBox(height: 30,),
                Image.asset("assets/images/plank2.png",height: 174,width:326 ,)
              ],
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          selectedItemColor: Color(0xFF363F72),
          unselectedItemColor: Color(0xFF667085),
          iconSize: 18,
          currentIndex: index,
          onTap: (value) {
            index = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "."),
            BottomNavigationBarItem(
                icon: Icon(Icons.navigation_outlined), label: "."),
            BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: "."),
            BottomNavigationBarItem(icon: Icon(Icons.perm_identity), label: "."),
          ],
        ),
      ),
    );
  }
}
