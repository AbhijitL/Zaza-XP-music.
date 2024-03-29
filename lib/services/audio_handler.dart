import 'dart:io';

import 'package:audio_service/audio_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:zaza_xp/constants.dart';

Future<AudioHandler> initAudioService() async {
  return await AudioService.init(
    builder: () => ZazaAudioHandler(),
    config: const AudioServiceConfig(
      androidNotificationChannelId: 'com.milkandegg.zaza_xp',
      androidNotificationChannelName: 'ZazaXP',
      notificationColor: Colors.blueGrey,
    ),
  );
}

class ZazaAudioHandler extends BaseAudioHandler {
  final _audioPlayer = AudioPlayer();
  ZazaAudioHandler() {
    try {
      _audioPlayer.setUrl(musicSource);
    } on PlayerException catch (e) {
      if (kDebugMode) {
        print("Error code: ${e.code}");
      }
      if (kDebugMode) {
        print("Error Message: ${e.message}");
      }
    } on PlayerInterruptedException catch (e) {
      if (kDebugMode) {
        print("Connection aborted: ${e.message}");
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    // _notifyAudioHandlerAboutPlaybackEvents();
  }
  @override
  Future<void> play() async {
    playbackState.add(playbackState.value
        .copyWith(playing: true, controls: [MediaControl.pause]));
    await _audioPlayer.play();
    _audioPlayer.setVolume(1);
    if (kDebugMode) {
      print("Audio is playing");
    }
  }

  @override
  Future<void> pause() async {
    playbackState.add(playbackState.value
        .copyWith(playing: false, controls: [MediaControl.play]));
    await _audioPlayer.setVolume(0);
    if (kDebugMode) {
      print("Audio is paused");
    }
  }

  @override
  Future<void> stop() async {
    // Release any audio decoders back to the system
    await _audioPlayer.stop();

    // Set the audio_service state to `idle` to deactivate the notification.
    playbackState.add(playbackState.value.copyWith(
      processingState: AudioProcessingState.idle,
    ));
  }

  @override
  Future<void> dispose() => _audioPlayer.dispose();

  @override
  Future<void> onTaskRemoved() async {
    await pause();
    await stop();
    await dispose();
    super.onTaskRemoved();
    if (kDebugMode) {
      print("removed ");
    }
    // this is dangerous and hacky
    // TODO: Implement better way to exit the app properly.
    exit(0);
  }

  // void _notifyAudioHandlerAboutPlaybackEvents() {
  //   _audioPlayer.playbackEventStream.listen((PlaybackEvent event) {
  //     final playing = _audioPlayer.playing;
  //     playbackState.add(playbackState.value.copyWith(controls: [
  //       if (playing) MediaControl.pause else MediaControl.play,
  //     ], androidCompactActionIndices: [
  //       0
  //     ]));
  //   });
  // }
}
