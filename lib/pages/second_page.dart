import 'package:flutter/material.dart';
import 'package:flutter_app/pages/todo_page.dart';

class SecondScreen extends StatelessWidget {
   SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
        backgroundColor: Colors.blue,
      ),
      body: ToDoPage(),
    );
  }
}
