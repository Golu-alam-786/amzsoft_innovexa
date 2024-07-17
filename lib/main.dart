import 'package:amzsoft_innovexa_assignment/views/screens/home_screen.dart';
import 'package:amzsoft_innovexa_assignment/views/screens/search_bar_screen.dart';
import 'package:flutter/material.dart';

import 'views/screens/home_screen_components/bottom_nav_bar.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  BottomNavBar(),
    );
  }
}