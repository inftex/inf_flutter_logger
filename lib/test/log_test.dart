import 'package:inf_flutter_logger/inf_flutter_logger.dart';
import 'package:test/test.dart';

void main() {
  test('info', () {
    Logger.info('bao test info');
    Logger.warning('bao test warning');
    Logger.error('bao test error');
    Logger.req('bao test req');
    Logger.res('bao test res');
    expect(true, true);
  });
}
