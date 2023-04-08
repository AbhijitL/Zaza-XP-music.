import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zaza_xp/services/utils.dart';
import 'package:zaza_xp/widgets/play_button.dart';
import 'package:zaza_xp/widgets/progress_visualizer.dart';
import 'package:zaza_xp/widgets/song_cover.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color imageColor = Colors.white;
  List<Color> colors = [
    Colors.green[900]!,
    Colors.green[900]!,
    Colors.blue[900]!,
    Colors.brown[900]!
  ];
  String imgPath = "assets/images/test_images/test_cover.JPG";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setImageColor();
  }

  Future<Color> setImageColor() async {
    imgPath = await getRandomImageLoc();
    imageColor = await getImageColor(imgPath);
    colors = [
      imageColor!,
      Color.fromARGB(255, 223, 244, 224)!,
      imageColor!,
      Color.fromARGB(255, 255, 255, 255)!
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
          Color(0xff000000),
          Color.fromARGB(255, 0, 0, 0),
        ],
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SongCover(imgUrl: imgPath),
          Container(
            padding: EdgeInsets.all(2),
            child: Material(
              color: Colors.transparent,
              child: Text(
                "Song Title",
                maxLines: 1,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Material(
            color: Colors.transparent,
            child: Text(
              "Artist Name",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
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
                        ":0",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
                          color: Color.fromARGB(255, 232, 232, 232),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "1:23",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
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
