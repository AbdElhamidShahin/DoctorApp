import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Home Screen"),
      ),

      // create a blue container with centered text
      body: Container(
        child: const Center(
          child: Text("Hello, World!", style: TextStyle(fontSize: 24)),
        ),
      ),
    );
  }
}
