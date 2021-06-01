import 'package:cubetiq/configurable.dart'
    show 
    SystemConfig, 
    getConfigOrNull, 
    SimpleConfigurationProvider,
    setConfig;

void main() {
  SystemConfig.setProvider(SimpleConfigurationProvider());
  setConfig('hello', 'Be the World!');

  var title = getConfigOrNull('hello', defaultValue: 'Just Hello');
  print(title);
}
