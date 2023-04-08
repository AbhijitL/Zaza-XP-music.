// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ProgressVisualizer extends StatelessWidget {
  final List<Color>? colors;
  final List<int>? duration;
  final int? barCount;
  final Curve? curve;

  const ProgressVisualizer({
    Key? key,
    this.colors,
    this.duration,
    this.barCount,
    this.curve,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: new List<Widget>.generate(
                barCount!,
                (index) => VisualComponent(
                      curve: curve!,
                      duration: duration![index % 5],
                      color: colors![index % 4],
                    )),
          ),
        ),
      ],
    );
  }
}

class VisualComponent extends StatefulWidget {
  final int? duration;
  final Color? color;
  final Curve? curve;

  const VisualComponent(
      {Key? key,
      @required this.duration,
      @required this.color,
      @required this.curve})
      : super(key: key);

  @override
  _VisualComponentState createState() => _VisualComponentState();
}

class _VisualComponentState extends State<VisualComponent>
    with SingleTickerProviderStateMixin {
  Animation<double>? animation;
  AnimationController? animationController;

  @override
  void initState() {
    super.initState();
    animate();
  }

  @override
  void dispose() {
    animation!..removeListener(() {});
    animation!..removeStatusListener((status) {});
    animationController!.stop();
    animationController!.reset();
    animationController!.dispose();
    super.dispose();
  }

  void animate() {
    animationController = AnimationController(
        duration: Duration(milliseconds: widget.duration!), vsync: this);
    final curvedAnimation =
        CurvedAnimation(parent: animationController!, curve: widget.curve!);
    animation = Tween<double>(begin: 0, end: 50).animate(curvedAnimation)
      ..addListener(() {
        update();
      });
    animationController!.repeat(reverse: true);
  }

  void update() {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      if (mounted) setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 4,
      height: animation!.value,
      decoration: BoxDecoration(
          color: widget.color, borderRadius: BorderRadius.circular(5)),
    );
  }
}
