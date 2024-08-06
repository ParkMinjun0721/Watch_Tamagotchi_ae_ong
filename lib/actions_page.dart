// actions_page.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app_state.dart';

class ActionsPage extends StatelessWidget {
  const ActionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tamagotchiState = Provider.of<TamagotchiState>(context, listen: false);

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  _buildActionButton(Icons.fastfood, tamagotchiState.feed),
                  _buildActionButton(Icons.gamepad_sharp, tamagotchiState.play),
                ],
              ),
              Row(
                children: [
                  _buildActionButton(Icons.health_and_safety, tamagotchiState.exercise),
                  _buildActionButton(Icons.bed, tamagotchiState.sleep),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActionButton(IconData label, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Icon(label as IconData?),
      ),
    );
  }
}
