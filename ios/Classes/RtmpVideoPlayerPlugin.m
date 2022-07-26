#import "RtmpVideoPlayerPlugin.h"
#if __has_include(<rtmp_video_player/rtmp_video_player-Swift.h>)
#import <rtmp_video_player/rtmp_video_player-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "rtmp_video_player-Swift.h"
#endif

@implementation RtmpVideoPlayerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftRtmpVideoPlayerPlugin registerWithRegistrar:registrar];
}
@end
