#import "InfFlutterLoggerPlugin.h"
#if __has_include(<inf_flutter_logger/inf_flutter_logger-Swift.h>)
#import <inf_flutter_logger/inf_flutter_logger-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "inf_flutter_logger-Swift.h"
#endif

@implementation InfFlutterLoggerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftInfFlutterLoggerPlugin registerWithRegistrar:registrar];
}
@end
