import 'package:flutter/material.dart';
// import 'package:nexar_platform/logic/providers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context,) {
    // int count = ref.watch(counterProvider);
    return Scaffold(
      appBar: Tab(child: Text("welocm to the app"),),
    );
  }
}