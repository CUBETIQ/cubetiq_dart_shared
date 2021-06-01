import 'mutable_configurable_provider.dart';

/// Simple Configuration Provider
///
/// @author sombochea
/// @since 1.0.0
class SimpleConfigurationProvider implements MutableConfigurationProvider {
  final Map<String, String?> _configs = {};

  @override
  String? getOrNull(String key, {String? defaultValue}) {
    var value = _configs[key];

    /// if value is null, then set the default value and return it back
    if (value == null) {
      _configs[key] = defaultValue;
      return defaultValue;
    }

    return value;
  }

  @override
  bool containsKey(String key) {
    return _configs.containsKey(key);
  }

  @override
  void set(String key, String? value) {
    _configs[key] = value;
  }

  @override
  void remove(String key) {
    _configs.remove(key);
  }

  @override
  void removeAll() {
    _configs.clear();
  }

  @override
  void setAll(Map<String, String?> configs) {
    _configs.addAll(configs);
  }
}
