import 'package:inf_flutter_logger/inf_flutter_logger.dart';
import 'package:test/test.dart';

void main() {
  test('info', () {
    Logger.info('bao test info');
    expect(true, true);
  });
}
