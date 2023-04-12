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

class _SongCoverState extends State<SongCover>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = new AnimationController(
      vsync: this,
      duration: Duration(seconds: 7),
    );
    animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(45),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: FittedBox(
          alignment: Alignment.center,
          fit: BoxFit.cover,
          clipBehavior: Clip.hardEdge,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset("assets/images/bg/r1.jpg"),
              AnimatedBuilder(
                animation: animationController,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/bg/r2.png"),
                  foregroundImage: NetworkImage(widget.imgUrl),
                  radius: 330,
                ),
                builder: (context, child) {
                  return new Transform.rotate(
                    angle: animationController.value * 6.3,
                    child: child,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
