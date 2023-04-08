// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:zaza_xp/constants.dart';

final audioPlayer = AudioPlayer();

class PlayButton extends StatefulWidget {
  Color btnColor;
  PlayButton({
    Key? key,
    required this.btnColor,
  }) : super(key: key);
  @override
  State<PlayButton> createState() => _PlayButtonState();
}

class _PlayButtonState extends State<PlayButton> {
  bool isPlaying = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // audioPlayer.onPlayerStateChanged.listen((event) {
    //   setState(() async {
    //     isPlaying = event == PlayerState.PLAYING;
    //   });
    // });
    audioPlayer.play(MusicSource, position: null);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        color: Colors.transparent,
        child: IconButton(
          onPressed: () async {
            if (isPlaying) {
              isPlaying = false;
              await audioPlayer.setVolume(0);
            } else {
              isPlaying = true;
              await audioPlayer.setVolume(1);
              await audioPlayer.play(MusicSource, position: null);
            }
            setState(() {});
          },
          icon: Icon(
            isPlaying
                ? Icons.pause_circle_filled_rounded
                : Icons.play_circle_fill_rounded,
            color: widget.btnColor,
            size: 80,
            shadows: <Shadow>[
              Shadow(color: Color.fromARGB(153, 98, 98, 98), blurRadius: 50.0)
            ],
          ),
        ),
      ),
    );
  }
}
