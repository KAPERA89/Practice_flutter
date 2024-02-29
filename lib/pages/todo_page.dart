import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {

  String message = "";

//text Editing Controller to get what user typed :
  TextEditingController myController = TextEditingController();


  void getUser(){
    setState(() {
        message = "Hello " + myController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              //greet user message
              Text(message),

              TextField(
                controller: myController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Username"   //placehodler
                ),
              ),
              ElevatedButton(onPressed: getUser, child: Text("Send"))
            ]
          ),
        ),
      ),
    );
  }
}
