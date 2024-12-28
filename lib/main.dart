import 'package:first_flutter_project/home_page.dart';
import 'package:flutter/material.dart';

// entry point of my app
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //inital theme from flutter application for any button or un colored widget to take this color
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // the first widget in the root
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,//just remove the banner 
    );
  }
}

