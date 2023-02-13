import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'inf_flutter_logger_platform_interface.dart';

/// An implementation of [InfFlutterLoggerPlatform] that uses method channels.
class MethodChannelInfFlutterLogger extends InfFlutterLoggerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('inf_flutter_logger');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
