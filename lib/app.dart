// app.dart
import 'package:flutter/material.dart';
import 'home.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tamagotchi App',
      theme: ThemeData.light(useMaterial3: true),
      home: const HomeScreen(),
    );
  }
}
