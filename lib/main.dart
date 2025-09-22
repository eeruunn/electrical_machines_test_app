import 'package:flutter/material.dart';
import 'package:machines_test_app/homescreen.dart';

//hehehehe enta mwonu , serprise aayow neeeee
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Machines app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      ),
      home: const MyHomePage(title: 'Electrical machines app'),
    );
  }
}
