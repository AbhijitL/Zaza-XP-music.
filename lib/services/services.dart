import 'dart:convert';
import 'package:zaza_xp/constants.dart';
import 'package:zaza_xp/model/socket.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

int heartBeat = 45000;
WebSocketChannel songChannel =
    IOWebSocketChannel.connect("wss://listen.moe/gateway_v2");

connect() {
  songChannel.stream.listen((event) {
    var data = jsonDecode(event);
    if (data['op'] == 0) {
      heartBeat = data['d']['heartbeat'];
    }
    sendPings(heartBeat);
  });
}

sendPings(int heartBeat) {
  Future.delayed(Duration(milliseconds: heartBeat), () {
    try {
      songChannel.sink.add(jsonEncode({"op": 9}));
    } catch (e) {
      connect();
    }
  });
}

String getAlbumImage(MusicData data) {
  String image = defaultImage;
  final List<Album> albumList = data.d.song.albums;
  try {
    for (int i = 0; i < albumList.length; i++) {
      if (albumList[i].image != null) {
        image = "https://cdn.listen.moe/covers/" + albumList[i].image!;
      }
    }
  } catch (e) {
    image = defaultImage;
  }
  return image;
}

String getSongTitle(MusicData data) {
  String songTitle = "Unknown";
  try {
    songTitle = data.d.song.title;
  } catch (e) {
    return songTitle;
  }
  return songTitle;
}

String getArtistName(MusicData data) {
  String artistName = "Unknown";
  final List<Artist> artistList = data.d.song.artists;
  try {
    for (int i = 0; i < artistList.length; i++) {
      if (artistList[i].name != null) {
        artistName = artistList[i].name!;
      } else if (artistList[i].nameRomaji != null) {
        artistName = artistList[i].nameRomaji!;
      }
      break;
    }
  } catch (e) {
    return artistName;
  }
  return artistName;
}
