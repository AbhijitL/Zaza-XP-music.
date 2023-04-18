import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:zaza_xp/constants.dart';
import 'package:zaza_xp/model/socket.dart';
import 'package:zaza_xp/pages/home_page.dart';
import '../services/services.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> with WidgetsBindingObserver {
  MusicData? data;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    super.didChangeAppLifecycleState(state);
    switch (state) {
      case AppLifecycleState.resumed:
        onResumed();
        break;
    }
  }

  void onResumed() {
    setState(() {
      getChannel();
    });
  }

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
                  if (kDebugMode) {
                    print("Connect");
                  }
                }
                var d = jsonDecode(snapshot.data.toString());
                var op = d['op'];
                switch (op) {
                  case 0:
                    getChannel().sink.add(jsonEncode({"op": 9}));
                    sendPings(heartBeat);
                    if (kDebugMode) {
                      print("Case 0 called");
                    }
                    break;
                  case 1:
                    if (d['t'] != 'TRACK_UPDATE' &&
                        d['t'] != 'TRACK_UPDATE_REQUEST' &&
                        d['t'] != 'QUEUE_UPDATE' &&
                        d['t'] != 'NOTIFICATION') break;
                    data = MusicData.fromJson(d);
                    sendPings(heartBeat);
                    if (kDebugMode) {
                      print("Case 1 called");
                    }
                    break;
                  default:
                    if (kDebugMode) {
                      print("default Case called");
                      print(op);
                    }
                    sendPings(heartBeat);
                    break;
                }
              }
              if (snapshot.data != null) {
                if (kDebugMode) {
                  print("HomePage Rebuilt");
                  print(getSongTitle(data!));
                }
                return HomePage(
                  albumURL: getAlbumImage(data!),
                  songTitle: getSongTitle(data!),
                  artistName: getArtistName(data!),
                  listeners: getActiveListeners(data!),
                  duration: getSongDuration(data!),
                );
              }
            } catch (e) {
              if (kDebugMode) {
                print(e);
              }
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
          child: const Material(
            color: Colors.transparent,
            child: Text(
              " version: $appVersion",
              style: TextStyle(fontSize: 15.0, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
