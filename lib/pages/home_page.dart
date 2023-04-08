// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:zaza_xp/services/utils.dart';
import 'package:zaza_xp/widgets/play_button.dart';
import 'package:zaza_xp/widgets/progress_visualizer.dart';
import 'package:zaza_xp/widgets/song_cover.dart';

class HomePage extends StatefulWidget {
  String albumURL;
  String songTitle;
  String artistName;
  int listeners;

  int duration;
  HomePage({
    Key? key,
    required this.albumURL,
    required this.songTitle,
    required this.artistName,
    required this.listeners,
    required this.duration,
  }) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color imageColor = Color.fromARGB(255, 206, 215, 211);
  List<Color> colors = [
    Color.fromARGB(255, 224, 255, 226)!,
    Color.fromARGB(255, 222, 255, 225)!,
    Color.fromARGB(255, 226, 237, 255)!,
    Color.fromARGB(255, 255, 224, 218)!
  ];
  String imgPath = "assets/images/test_images/test_cover.JPG";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("init of home called");
    setColor();
  }

  @override
  void didUpdateWidget(HomePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("Update home page");
    setColor();
  }

  Future<Color> setColor() async {
    imageColor = await getImageColor(widget.albumURL);
    colors = [
      imageColor!,
      Color.fromARGB(255, 234, 255, 229)!,
      imageColor!,
      Color.fromARGB(255, 255, 235, 235)!
    ];
    setState(() {});
    return imageColor;
  }

  final List<int> duration = [900, 700, 600, 800, 500];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: <Color>[
          imageColor,
          Color.fromARGB(241, 0, 0, 0),
          Color.fromARGB(115, 0, 0, 0),
        ],
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SongCover(imgUrl: widget.albumURL),
          Container(
            padding: EdgeInsets.all(2),
            child: Material(
              color: Colors.transparent,
              child: Text(
                widget.songTitle,
                maxLines: 1,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Material(
            color: Colors.transparent,
            child: Text(
              widget.artistName,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 232, 232, 232),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30),
            child: ProgressVisualizer(
              barCount: 30,
              colors: colors,
              duration: duration,
              curve: Curves.bounceOut,
            ),
          ),
          Material(
            color: Colors.transparent,
            child: Padding(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, left: 40, right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.hearing_outlined,
                        color: Colors.white,
                      ),
                      Text(
                        widget.listeners.toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 232, 232, 232),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    formatedTime(timeInSecond: widget.duration),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 232, 232, 232),
                    ),
                  ),
                ],
              ),
            ),
          ),
          PlayButton(
            btnColor: imageColor,
          ),
        ],
      ),
    );
  }
}
