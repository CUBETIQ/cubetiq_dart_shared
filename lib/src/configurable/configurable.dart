import 'system_config.dart';

/// get config or null from system config
String? getConfigOrNull(String key, {String? defaultValue}) =>
    SystemConfig.getOrNull(key, defaultValue: defaultValue);

/// get config with non-null from system config
String getConfig(String key, {String? defaultValue}) =>
    SystemConfig.get(key, defaultValue: defaultValue);

/// check has config key or not from system config
bool hasConfigkey(String key) => SystemConfig.containsKey(key);

/// set config into memory
void setConfig(String key, String? value) => SystemConfig.set(key, value);