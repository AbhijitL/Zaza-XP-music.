import 'package:flutter/material.dart';

class SongCover extends StatefulWidget {
  const SongCover({super.key});

  @override
  State<SongCover> createState() => _SongCoverState();
}

class _SongCoverState extends State<SongCover> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(50),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: FittedBox(
          alignment: Alignment.center,
          fit: BoxFit.cover,
          child: Image.asset("assets/images/test_cover.JPG"),
          clipBehavior: Clip.hardEdge,
        ),
      ),
    );
  }
}
