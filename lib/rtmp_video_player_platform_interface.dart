import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'rtmp_video_player_method_channel.dart';

abstract class RtmpVideoPlayerPlatform extends PlatformInterface {
  /// Constructs a RtmpVideoPlayerPlatform.
  RtmpVideoPlayerPlatform() : super(token: _token);

  static final Object _token = Object();

  static RtmpVideoPlayerPlatform _instance = MethodChannelRtmpVideoPlayer();

  /// The default instance of [RtmpVideoPlayerPlatform] to use.
  ///
  /// Defaults to [MethodChannelRtmpVideoPlayer].
  static RtmpVideoPlayerPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [RtmpVideoPlayerPlatform] when
  /// they register themselves.
  static set instance(RtmpVideoPlayerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
