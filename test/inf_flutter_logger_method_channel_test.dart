import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:inf_flutter_logger/inf_flutter_logger_method_channel.dart';

void main() {
  MethodChannelInfFlutterLogger platform = MethodChannelInfFlutterLogger();
  const MethodChannel channel = MethodChannel('inf_flutter_logger');

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
