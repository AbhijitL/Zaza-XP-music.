import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:zaza_xp/model/socket.dart';
import 'package:zaza_xp/pages/home_page.dart';
import 'package:zaza_xp/services/utils.dart';
import '../services/services.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  MusicData? data;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "assets/images/bg/17.jpg",
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        StreamBuilder(
          stream: getChannel().stream,
          builder: ((context, snapshot) {
            try {
              if (snapshot.hasData) {
                if (snapshot.connectionState.index == 0) {
                  connect();
                  print("Connect");
                }
                var d = jsonDecode(snapshot.data.toString());
                var op = d['op'];
                switch (op) {
                  case 0:
                    getChannel().sink.add(jsonEncode({"op": 9}));
                    sendPings(heartBeat);
                    print("Case 0 called");
                    break;
                  case 1:
                    if (d['t'] != 'TRACK_UPDATE' &&
                        d['t'] != 'TRACK_UPDATE_REQUEST' &&
                        d['t'] != 'QUEUE_UPDATE' &&
                        d['t'] != 'NOTIFICATION') break;
                    data = MusicData.fromJson(d);
                    sendPings(heartBeat);
                    print("Case 1 called");
                    break;
                  default:
                    print("default Case called");
                    sendPings(heartBeat);
                    break;
                }
              }
              // setColor();
              if (snapshot.data != null) {
                print("HomePage Rebuilt");
                return HomePage(
                  albumURL: getAlbumImage(data!),
                  songTitle: getSongTitle(data!),
                  artistName: getArtistName(data!),
                  listeners: getActiveListeners(data!),
                  duration: getSongDuration(data!),
                );
              }
            } catch (e) {
              print("Errrrrrrrrrrr");
              print(e);
              return const Center(
                child: Text("Error"),
              );
            }
            return const Center(
              child: SizedBox(
                height: 80,
                width: 80,
                child: CircularProgressIndicator(
                  strokeWidth: 5,
                  color: Colors.greenAccent,
                ),
              ),
            );
          }),
        ),
        Container(
          width: double.infinity,
          // height: double.infinity,
          alignment: Alignment.bottomRight,
          child: Image.asset(
            "assets/images/bg/ld.gif",
            alignment: Alignment.bottomRight,
            width: 120,
          ),
        ),
        Container(
          width: double.infinity,
          alignment: Alignment.bottomLeft,
          child: Material(
            color: Colors.transparent,
            child: Text(
              " version: 0.1A",
              style: TextStyle(fontSize: 15.0, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
