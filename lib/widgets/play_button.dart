// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:zaza_xp/constants.dart';

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
            } else {
              isPlaying = true;
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
