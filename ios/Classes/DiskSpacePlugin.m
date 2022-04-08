#import "DiskSpacePlugin.h"
#if __has_include(<disk_space/disk_space-Swift.h>)
#import <disk_space/disk_space-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "disk_space-Swift.h"
#endif

@implementation DiskSpacePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftDiskSpacePlugin registerWithRegistrar:registrar];
}
@end
