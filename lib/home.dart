// home.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'actions_page.dart';
import 'status_page.dart';
import 'app_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: [
        const StatusPage(),
        Center(
          child: Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/ae_ong.png', height: 80, width: 80),
                const SizedBox(height: 20),
                const Text(
                  '애옹',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ],
            ),
          ),
        ),
        const ActionsPage(),
      ],
    );
  }
}
