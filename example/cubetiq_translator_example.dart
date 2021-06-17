import 'package:cubetiq/text.dart';
import 'package:cubetiq/i18n_translator.dart';

void main(List<String> args) {
  var text = 'Your name is {name}!';
  // Before set provider
  var result = StringUtils.decorator(text, translate: true, params: {
    'name': 'Sambo Chea',
  });
  print('Result Before => $result');

  TranslatorFactory.setProvider(TranslatorProviderExample());

  // After set provider
  result = StringUtils.decorator(text, translate: true, params: {
    'name': 'Sambo Chea',
  });
  print('Result After => $result');
}

class TranslatorProviderExample implements TranslatorProvider {
  @override
  bool hasKey(String key) {
    return false;
  }

  @override
  String translate(String key,
      {Map<String, dynamic>? params, String? fallback}) {
    if (key == 'Your name is {name}!') {
      return 'ឈ្មោះរបស់អ្នកគឺ {name}!';
    }

    return key;
  }
}
