import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/cat-logo.png',
            width: 300,
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Welcome!',
            style: TextStyle(color: Color.fromARGB(255, 125, 185, 35)),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            child: Text('Start!!!'),
          ),
        ], 
      ),
    );
  }
}
