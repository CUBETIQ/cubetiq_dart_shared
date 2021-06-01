# CUBETIQ Dart Shared
A minimal dart functions, utils and extensions for CUBETIQ Developers.

# Features
- Configurable
- Text Formatter

## Usage

A simple configurable usage example:

```dart
import 'package:cubetiq/configurable.dart'
    show 
    SystemConfig, 
    getConfigOrNull, 
    SimpleConfigurationProvider,
    setConfig;

main() {
  SystemConfig.setProvider(SimpleConfigurationProvider());
  setConfig('hello', 'Be the World!');

  var title = getConfigOrNull('hello', defaultValue: 'Just Hello');
  print(title); //output will be: Be the World
}
```


## Contributors
- Sambo Chea <sombochea@cubetiqs.com>

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://git.cubetiqs.com/CUBETIQ/cubetiq_dart_shared/issues
