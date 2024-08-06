// status_page.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app_state.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tamagotchiState = Provider.of<TamagotchiState>(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildStatusRow('Food', tamagotchiState.food),
              _buildStatusRow('Mood', tamagotchiState.mood),
              _buildStatusRow('Health', tamagotchiState.health),
              _buildStatusRow('Sleep', tamagotchiState.sleep_value),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatusRow(String label, int value) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$label: ',
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            '$value',
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
