import 'package:flutter/material.dart';
import 'package:flutter_demo_mp/view/home/home_screen.dart';
import 'package:flutter_demo_mp/view/main/main_theme.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MainTheme.get(),
      home: const HomeScreen(),
    );
  }
}
