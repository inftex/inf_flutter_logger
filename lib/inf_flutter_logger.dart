export 'logger.dart';

import 'inf_flutter_logger_platform_interface.dart';

class InfFlutterLogger {
  Future<String?> getPlatformVersion() {
    return InfFlutterLoggerPlatform.instance.getPlatformVersion();
  }
}
