import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'rtmp_video_player_platform_interface.dart';

/// An implementation of [RtmpVideoPlayerPlatform] that uses method channels.
class MethodChannelRtmpVideoPlayer extends RtmpVideoPlayerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('rtmp_video_player');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
