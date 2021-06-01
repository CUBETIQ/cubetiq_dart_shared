import 'configuration_provider.dart';
import 'mutable_configurable_provider.dart';
import 'simple_configuration_provider.dart';

/// System Configuration Static Functions
///
/// @author sombochea
/// @since 1.0.0
class SystemConfig {
  static ConfigurationProvider? _provider;

  /// Set configuration provider
  static void setProvider(ConfigurationProvider provider) {
    _provider = provider;
  }

  static ConfigurationProvider getProvider() {
    if (_provider == null) {
      setProvider(SimpleConfigurationProvider());
    }

    return _provider!;
  }

  static String get(String key, {String? defaultValue}) {
    return getOrNull(key, defaultValue: defaultValue)!;
  }

  static String? getOrNull(String key, {String? defaultValue}) {
    return getProvider().getOrNull(key, defaultValue: defaultValue);
  }

  static Future<String?> getOrNullAsync(String key, {String? defaultValue}) {
    return getProvider().getOrNullAsync(key, defaultValue: defaultValue);
  }

  static bool containsKey(String key) => getProvider().containsKey(key);

  static Future<bool> containsKeyAsync(String key) =>
      getProvider().containsKeyAsync(key);

  /// Convert to mutable configuration provider
  static MutableConfigurationProvider _getMutableConfigurationProvider() {
    if (_provider is MutableConfigurationProvider) {
      return (_provider as MutableConfigurationProvider);
    } else {
      throw Exception(
          'Error cannot use mutable functions without mutable configuration provider!');
    }
  }

  static void set(String key, String? value) {
    _getMutableConfigurationProvider().set(key, value);
  }

  static Future<void> setAsync(String key, String? value) async {
    await _getMutableConfigurationProvider().setAsync(key, value);
  }

  static void setAll(Map<String, String?> values) {
    _getMutableConfigurationProvider().setAll(values);
  }

  static Future<void> setAllAsync(Map<String, String?> values) async {
    await _getMutableConfigurationProvider().setAllAsync(values);
  }

  static void remove(String key) {
    _getMutableConfigurationProvider().remove(key);
  }

  static Future<void> removeAsync(String key) async {
    await _getMutableConfigurationProvider().removeAsync(key);
  }

  static void removeAll() {
    _getMutableConfigurationProvider().removeAll();
  }

  static Future<void> removeAllAsync() async {
    await _getMutableConfigurationProvider().removeAllAsync();
  }
}
