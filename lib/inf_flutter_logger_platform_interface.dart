import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'inf_flutter_logger_method_channel.dart';

abstract class InfFlutterLoggerPlatform extends PlatformInterface {
  /// Constructs a InfFlutterLoggerPlatform.
  InfFlutterLoggerPlatform() : super(token: _token);

  static final Object _token = Object();

  static InfFlutterLoggerPlatform _instance = MethodChannelInfFlutterLogger();

  /// The default instance of [InfFlutterLoggerPlatform] to use.
  ///
  /// Defaults to [MethodChannelInfFlutterLogger].
  static InfFlutterLoggerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [InfFlutterLoggerPlatform] when
  /// they register themselves.
  static set instance(InfFlutterLoggerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
