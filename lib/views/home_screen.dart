import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: (){
          
        },child: const Icon(Icons.add),),
        appBar: AppBar(title: const Text("Task Management",style: TextStyle(color: Colors.white),),centerTitle: true,backgroundColor: Colors.black,),
        body: const Center(
          child: Text("Let's Start with adding the tasks.\nTo Begin Press the Add Button below"),
        ),
      ),
    );
  }
}
