import 'package:flutter_test/flutter_test.dart';
import 'package:inf_flutter_logger/inf_flutter_logger.dart';
import 'package:inf_flutter_logger/inf_flutter_logger_platform_interface.dart';
import 'package:inf_flutter_logger/inf_flutter_logger_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockInfFlutterLoggerPlatform
    with MockPlatformInterfaceMixin
    implements InfFlutterLoggerPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final InfFlutterLoggerPlatform initialPlatform = InfFlutterLoggerPlatform.instance;

  test('$MethodChannelInfFlutterLogger is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelInfFlutterLogger>());
  });

  test('getPlatformVersion', () async {
    InfFlutterLogger infFlutterLoggerPlugin = InfFlutterLogger();
    MockInfFlutterLoggerPlatform fakePlatform = MockInfFlutterLoggerPlatform();
    InfFlutterLoggerPlatform.instance = fakePlatform;

    expect(await infFlutterLoggerPlugin.getPlatformVersion(), '42');
  });
}
