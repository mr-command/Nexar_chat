import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:nexar_platform/screens/HomeScreen.dart';
import 'package:nexar_platform/screens/LoginScreen.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp()
      )
    );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: LoginScreen()
      ),
    );
  }
}