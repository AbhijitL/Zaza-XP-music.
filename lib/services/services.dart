import 'dart:convert';
import 'package:zaza_xp/constants.dart';
import 'package:zaza_xp/model/socket.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

int heartBeat = 45000;
WebSocketChannel songChannel =
    IOWebSocketChannel.connect("wss://listen.moe/gateway_v2");

connect() {
  getChannel().stream.listen((event) {
    var data = jsonDecode(event);
    if (data['op'] == 0) {
      heartBeat = data['d']['heartbeat'];
    }
    sendPings(heartBeat);
  });
}

WebSocketChannel getChannel() {
  return songChannel;
}

sendPings(int heartBeat) {
  Future.delayed(Duration(milliseconds: heartBeat), () {
    try {
      getChannel().sink.add(jsonEncode({"op": 9}));
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
        image = "https://cdn.listen.moe/covers/${albumList[i].image!}";
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
    for (int i = 0; i < artistList.length;) {
      if (artistList[i].nameRomaji != null) {
        artistName = artistList[i].nameRomaji!;
      } else if (artistList[i].name != null) {
        artistName = artistList[i].name!;
      }
      break;
    }
  } catch (e) {
    return artistName;
  }
  return artistName;
}

// Get Song Duration in Seconds i.e 236
int getSongDuration(MusicData data) {
  int duration = 0;
  try {
    duration = data.d.song.duration;
  } catch (e) {
    return duration;
  }
  return duration;
}

//Get Start time in H:M:S
String getStartTime(MusicData data) {
  String startTime = "Null";
  try {
    var timeData = data.d.startTime!;
    startTime = timeData.split("T").last.split(".").first;
  } catch (e) {
    return startTime;
  }
  return startTime;
}

String getArtistImage(MusicData data) {
  String artistImage = defaultImage;
  final List<Artist> artistList = data.d.song.artists;
  try {
    for (int i = 0; i < artistList.length;) {
      if (artistList[i].image != null) {
        artistImage = "https://cdn.listen.moe/artists/${artistList[i].image!}";
      } else {
        artistImage = defaultImage;
      }
      break;
    }
  } catch (e) {
    return artistImage;
  }
  return artistImage;
}

// get active listeners on current song.
int getActiveListeners(MusicData data) {
  int listeners = 0;
  try {
    listeners = data.d.listeners;
  } catch (e) {
    return listeners;
  }
  return listeners;
}
