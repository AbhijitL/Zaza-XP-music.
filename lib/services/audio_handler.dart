import 'package:audio_service/audio_service.dart';
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
      _audioPlayer.setUrl("http://curiosity.shoutca.st:8019/stream");
    } on PlayerException catch (e) {
      print("Error code: ${e.code}");
      print("Error Message: ${e.message}");
    } on PlayerInterruptedException catch (e) {
      print("Connection aborted: ${e.message}");
    } catch (e) {
      _audioPlayer.setUrl("http://curiosity.shoutca.st:8019/stream");
    }
    // _notifyAudioHandlerAboutPlaybackEvents();
  }
  @override
  Future<void> play() async {
    playbackState.add(playbackState.value
        .copyWith(playing: true, controls: [MediaControl.pause]));
    await _audioPlayer.play();
    _audioPlayer.setVolume(1);
    print("Audio is playing");
  }

  @override
  Future<void> pause() async {
    // playbackState.add(playbackState.value
    //     .copyWith(playing: false, controls: [MediaControl.play]));
    await _audioPlayer.setVolume(0);
    print("Audio is paused");
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
