import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home_page.dart';
import 'package:flutter_app/pages/profile_page.dart';
import 'package:flutter_app/pages/second_page.dart';
import 'package:flutter_app/pages/setting_page.dart';


//Stateful widget => change depending on the state
//Stateless widget => don't => you need to rebuild the project to see modifications

class FirstScreen extends StatefulWidget {
   FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
   int _selectedIndex = 0;

  final List _pages = [
    HomePage(),
    SettingPage(),
    ProfilePage(),
  ];

  void _navigatorBottombar(int i){
    setState(() {
      _selectedIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
        backgroundColor: Colors.deepPurple,
      ),
      drawer: Drawer(
        backgroundColor: Colors.pinkAccent,
        child: Column(
          children: [
            DrawerHeader(child: Icon(Icons.favorite, size: 40)),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('H O M E'),
              onTap:(){
                Navigator.pop(context);
                Navigator.pushNamed(context, "/HomePage");
                },
            ),
            ListTile(
                leading: Icon(Icons.settings),
                title: Text('S E T T I N G S'),
                onTap:(){
                  Navigator.pop(context);
                  Navigator.pushNamed(context, "/SettingPage");
                }
            ),

            ListTile(
                leading: Icon(Icons.settings),
                title: Text('SECOND SCREEN'),
                onTap:(){
                  Navigator.pop(context);
                  Navigator.pushNamed(context, "/secondScreen");
                }
            ),

          ],
        )
      ),
      // body: Center(
      //   child: ElevatedButton(
      //     child: Text("Go To Second Page"),
      //     onPressed: (){
      //      // Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
      //       Navigator.pushNamed(context, "/secondScreen");
      //     },),
      // ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigatorBottombar,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',

          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile'
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings'
          ),
        ],
      ),
    );
  }
}
