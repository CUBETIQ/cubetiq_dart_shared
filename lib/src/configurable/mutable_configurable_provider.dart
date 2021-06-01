import 'configuration_provider.dart';

/// Mutable Configuration Provider
///
/// @author sombochea
/// @since 1.0.3
abstract class MutableConfigurationProvider implements ConfigurationProvider {
  /// Allow to set the value into config values
  void set(String key, String? value);

  /// Allow to set all values into config values
  void setAll(Map<String, String?> configs);

  /// Allow to remove the key from config values
  void remove(String key);

  /// Allow to remove all values from config values
  void removeAll();
}
