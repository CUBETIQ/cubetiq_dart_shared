import 'configuration_provider.dart';

/// Mutable Configuration Provider
///
/// @author sombochea
/// @since 1.0.3
abstract class MutableConfigurationProvider extends ConfigurationProvider {
  /// Allow to set the value into config values
  void set(String key, String? value);

  /// Allow to set all values into config values
  void setAll(Map<String, String?> configs) {
    configs.forEach((key, value) {
      set(key, value);
    });
  }

  /// Allow to remove the key from config values
  void remove(String key);

  /// Allow to remove all values from config values
  void removeAll();

  /// Allow to set the value into config values in async function
  Future<void> setAsync(String key, String? value) async {
    set(key, value);
  }

  /// Allow to set all values into config values in async function
  Future<void> setAllAsync(Map<String, String?> configs) async {
    configs.forEach((key, value) {
      setAsync(key, value);
    });
  }

  /// Allow to remove the key from config values in async function
  Future<void> removeAsync(String key) async {
    remove(key);
  }

  /// Allow to remove all values from config values in async function
  Future<void> removeAllAsync() async {
    removeAll();
  }
}
