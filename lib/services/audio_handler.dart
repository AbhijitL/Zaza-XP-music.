import 'package:audio_service/audio_service.dart';

Future<AudioHandler> initAudioService() async {
  return await AudioService.init(
    builder: () => ZazaAudioHandler(),
    config: const AudioServiceConfig(
      androidNotificationChannelId: 'com.milkandegg.zaza_xp',
      androidNotificationChannelName: 'ZazaXP',
    ),
  );
}

class ZazaAudioHandler extends BaseAudioHandler {}
