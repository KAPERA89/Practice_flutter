import 'package:flutter/material.dart';
import 'package:flutter_app/pages/first_page.dart';
import 'package:flutter_app/pages/home_page.dart';
import 'package:flutter_app/pages/second_page.dart';
import 'package:flutter_app/pages/setting_page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static List names = ["Othmane", "Darhoni", "Kapera"];

  void userTapped(){
    print("user Tapped");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
      routes: {
        '/firstScreen': (context)=> FirstScreen(),
        '/secondScreen': (context)=> SecondScreen(),
        '/HomePage': (context)=> HomePage(),
        '/SettingPage': (context)=> SettingPage(),
      },
      // Scaffold(
      //   backgroundColor: Colors.blue,
      //   appBar: AppBar(
      //     backgroundColor: Colors.deepPurple,
      //     title: Text("MyAppBAR", style: TextStyle(color: Colors.white),),
      //     elevation: 0,
      //     leading: Icon(Icons.menu,color: Colors.white,),
      //     actions: [
      //       IconButton(onPressed: () {}, icon: Icon(Icons.logout, color: Colors.white,))
      //     ],
      //   ),
        // body: Center(
        //   child: Container(
        //     height: 300,
        //     width: 300,
        //     // padding: EdgeInsets.symmetric(horizontal: 40, vertical: 60),
        //     // padding: EdgeInsets.only(left: 50, top: 50),
        //     padding: EdgeInsets.all(25),
        //     decoration: BoxDecoration(
        //         color: Colors.deepPurple,
        //       borderRadius: BorderRadius.circular(20)
        //     ),
        //     // child: Text("Othmane",
        //     //     style: TextStyle(
        //     //         color: Colors.white,
        //     //         fontSize: 28,
        //     //         fontWeight: FontWeight.bold
        //     //     ),
        //     //   ),
        //     child: Icon(
        //       Icons.favorite,
        //       color: Colors.white,
        //       size: 50,
        //     ),
        //   ),
        // ),
        // body: Column(
        //   // mainAxisAlignment: MainAxisAlignment.center,
        //   // crossAxisAlignment: CrossAxisAlignment.end,
        //   children: [
        //     // //1st box :
        //     // Expanded(child: Container(color: Colors.deepOrange [200])),
        //     // //2st box :
        //     // Expanded(child: Container(color: Colors.deepOrange[400]),flex: 2,),
        //     // //3st box :
        //     // Expanded(child: Container(color: Colors.deepOrange[600])),
        //   Container(height:350,color: Colors.deepOrange [200]),
        //   Container(height:350,color: Colors.deepOrange [400]),
        //   Container(height:350,color: Colors.deepOrange [600]),
        //   ],
        // ),
        // body: ListView(
        //   // scrollDirection: Axis.horizontal,
        //   children: [
        //     Container(height:350,color: Colors.deepOrange [200]),
        //     Container(height:350,color: Colors.deepOrange [400]),
        //     Container(height:350,color: Colors.deepOrange [600]),
        //   ],
        // ),
      //   body: ListView.builder(
      //       itemCount: names.length,
      //       itemBuilder: (context, index) => ListTile(
      //         title: Text(names[index]),
      //       ))
      // ),
      //   body: GridView.builder(
      //     itemCount: 64,
      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      //       itemBuilder: (context, index) => Container(
      //         color: Colors.deepPurple,
      //         margin: EdgeInsets.all(2),
      //       )
      //   ),

        // body : Stack(
        //   alignment: Alignment.center,
        //   children: [
        //     Container(height: 300, width: 300, color: Colors.deepPurple,),
        //     Container(height: 200, width: 200, color: Colors.deepPurple[200],),
        //     Container(height: 100, width: 100, color: Colors.deepPurple[100],),
        //   ],
        // ),
      // body: Center(
      //   child: GestureDetector(
      //     onTap: (){
      //       userTapped();
      //     },
      //     child: Container(
      //       color: Colors.deepPurple,
      //       height: 300,
      //       width: 300,
      //       child: Center(child: Text("Tap Me")),
      //     ),
      //   ),
      // )
      // )
    );
  }
}


