import 'package:flutter/material.dart';
import 'package:new_1/list_view.dart';
import 'package:new_1/stack.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title:const Text("LIstview and Stack",style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontWeight:FontWeight.bold),),
        backgroundColor: Color.fromARGB(190, 34, 203, 43),
      ),
      body: Stack_Dart(),
    );
  }
}
