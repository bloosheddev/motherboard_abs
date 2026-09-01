import 'package:flutter/material.dart';
import 'package:motherboard/screen/1_get_started_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Motherboard',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.blue)),
      home: GetStartedScreen(),
    );
  }
}
