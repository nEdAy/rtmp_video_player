
import 'rtmp_video_player_platform_interface.dart';

class RtmpVideoPlayer {
  Future<String?> getPlatformVersion() {
    return RtmpVideoPlayerPlatform.instance.getPlatformVersion();
  }
}
