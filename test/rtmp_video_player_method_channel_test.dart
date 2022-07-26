import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rtmp_video_player/rtmp_video_player_method_channel.dart';

void main() {
  MethodChannelRtmpVideoPlayer platform = MethodChannelRtmpVideoPlayer();
  const MethodChannel channel = MethodChannel('rtmp_video_player');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
