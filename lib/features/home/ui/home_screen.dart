import 'package:doctor_app_flutter/features/home/ui/widgets/custom_top_bar_ohme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(children: [

            CustomTopBarHome(),

          ]),
        ),
      ),
    );
  }
}
