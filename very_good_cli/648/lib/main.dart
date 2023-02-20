import 'package:flutter/material.dart';
import 'package:vgvtest_648/widget%5B1%5D_special.dart';

void main() {
  runApp(const MaterialApp(home: HomePage()));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: SpecialWidget()),
    );
  }
}
