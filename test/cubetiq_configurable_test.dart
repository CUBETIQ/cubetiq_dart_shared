import 'package:test/test.dart';

import 'package:cubetiq/configurable.dart';

void main() {
  group('A simple configurable provider and functions', () {
    setUp(() {
      print('Register provider...');
      SystemConfig.setProvider(SimpleConfigurationProvider());

      // Set config here
      setConfig('hello', 'World');
    });

    test('Get it back!', () {
      var hello = getConfigOrNull('hello');
      expect('World', hello);
    });
  });
}
