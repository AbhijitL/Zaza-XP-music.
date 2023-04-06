import 'package:flutter/material.dart';
import 'package:zaza_xp/widgets/song_cover.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: <Color>[
          Colors.greenAccent,
          // Color(0xff000000),
          Color(0xff000000),
        ],
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [SongCover()],
      ),
    );
  }
}
