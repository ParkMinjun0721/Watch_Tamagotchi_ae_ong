// main.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app_state.dart';
import 'home.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => TamagotchiState(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
