/// Configuration Provider
///
/// @author sombochea
/// @since 1.0.0
abstract class ConfigurationProvider {
  /// check has key or not in implemented classes
  bool containsKey(String key);

  /// get or null in implemented classes
  String? getOrNull(String key, {String? defaultValue});

  /// check has key or not for async function
  Future<bool> containsKeyAsync(String key) async {
    return Future.value(containsKey(key));
  }

  /// get or null for async function
  Future<String?> getOrNullAsync(String key, {String? defaultValue}) async {
    return Future.value(getOrNull(key, defaultValue: defaultValue));
  }
}
