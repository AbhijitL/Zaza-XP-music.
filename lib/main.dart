import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zaza_xp/pages/home_page.dart';

void main() {
  // Set status bar to transparent.
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  runApp(const Root());
}

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.green),
      home: HomePage(),
    );
  }
}
