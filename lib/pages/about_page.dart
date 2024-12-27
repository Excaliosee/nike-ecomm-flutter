import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(child: Text('Under Development', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)),
    );
  }
}