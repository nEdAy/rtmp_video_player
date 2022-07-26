import 'package:flutter_test/flutter_test.dart';
import 'package:rtmp_video_player/rtmp_video_player.dart';
import 'package:rtmp_video_player/rtmp_video_player_platform_interface.dart';
import 'package:rtmp_video_player/rtmp_video_player_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockRtmpVideoPlayerPlatform 
    with MockPlatformInterfaceMixin
    implements RtmpVideoPlayerPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final RtmpVideoPlayerPlatform initialPlatform = RtmpVideoPlayerPlatform.instance;

  test('$MethodChannelRtmpVideoPlayer is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelRtmpVideoPlayer>());
  });

  test('getPlatformVersion', () async {
    RtmpVideoPlayer rtmpVideoPlayerPlugin = RtmpVideoPlayer();
    MockRtmpVideoPlayerPlatform fakePlatform = MockRtmpVideoPlayerPlatform();
    RtmpVideoPlayerPlatform.instance = fakePlatform;
  
    expect(await rtmpVideoPlayerPlugin.getPlatformVersion(), '42');
  });
}
