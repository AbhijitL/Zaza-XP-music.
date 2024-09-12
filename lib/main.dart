import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zaza_xp/presentation/pages/loading_page.dart';
import 'package:zaza_xp/services/service_locator.dart';

void main() async {
  // Set status bar to transparent.
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  //audio services handler
  await setupServiceLocator();

  runApp(const Root());
}

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Zaza Experience",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.greenAccent,
        fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
      ),
      home: const LoadingPage(),
    );
  }
}
