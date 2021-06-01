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

  static bool containsKey(String key) => getProvider().containsKey(key);

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

  static void setAll(Map<String, String?> values) {
    _getMutableConfigurationProvider().setAll(values);
  }
}
