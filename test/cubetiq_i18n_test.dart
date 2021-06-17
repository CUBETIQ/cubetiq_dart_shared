import 'package:cubetiq/i18n_translator.dart';
import 'package:cubetiq/src/xlog/xlog.dart';
import 'package:cubetiq/text.dart';
import 'package:test/test.dart';

void main() {
  test('test translate function', () {
    var text1 = 'Hello, my name is {0}!';
    var result1 = TextFormatter(text1).translate().format(args: ['Sambo']);
    XLog.success(result1);

    expect('Hello, my name is Sambo!', result1);

    TranslatorFactory.setProvider(TranslatorProviderExample());

    result1 = TextFormatter(text1).translate().format(args: ['Sambo']);
    XLog.success(result1);
    expect('ឈ្មោះរបស់អ្នកគឺ Sambo!', result1);
  });
}

class TranslatorProviderExample implements TranslatorProvider {
  @override
  bool hasKey(String key) {
    return false;
  }

  @override
  String translate(String key,
      {Map<String, dynamic>? params, String? fallback}) {
    if (key == 'Hello, my name is {0}!') {
      return 'ឈ្មោះរបស់អ្នកគឺ {0}!';
    }

    return key;
  }
}
