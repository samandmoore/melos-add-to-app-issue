#import "ZeepluginPlugin.h"
#if __has_include(<zeeplugin/zeeplugin-Swift.h>)
#import <zeeplugin/zeeplugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "zeeplugin-Swift.h"
#endif

@implementation ZeepluginPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftZeepluginPlugin registerWithRegistrar:registrar];
}
@end
