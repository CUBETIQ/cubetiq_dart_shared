/// Configuration Provider
///
/// @author sombochea
/// @since 1.0.0
abstract class ConfigurationProvider {
  /// check has key or not in implemented classes
  bool containsKey(String key);

  /// get or null in implemented classes
  String? getOrNull(String key, {String? defaultValue});
}
