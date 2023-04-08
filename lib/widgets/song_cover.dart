// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SongCover extends StatefulWidget {
  String imgUrl;
  SongCover({
    Key? key,
    required this.imgUrl,
  }) : super(key: key);
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
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/bg/dd.jpg"),
            foregroundImage: NetworkImage(widget.imgUrl),
          ),
          clipBehavior: Clip.hardEdge,
        ),
      ),
    );
  }
}
