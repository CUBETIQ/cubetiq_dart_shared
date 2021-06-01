import 'system_config.dart';

/// get config or null from system config
String? getConfigOrNull(String key, {String? defaultValue}) =>
    SystemConfig.getOrNull(key, defaultValue: defaultValue);

/// get config or null from system config in async
Future<String?> getConfigOrNullAsync(String key,
        {String? defaultValue}) async =>
    await SystemConfig.getOrNullAsync(key, defaultValue: defaultValue);

/// get config with non-null from system config
String getConfig(String key, {String? defaultValue}) =>
    SystemConfig.get(key, defaultValue: defaultValue);

/// check has config key or not from system config
bool hasConfigkey(String key) => SystemConfig.containsKey(key);

/// check has config key or not from system config in async function
Future<bool> hasConfigkeyAsync(String key) async =>
    await SystemConfig.containsKeyAsync(key);

/// set config into memory or custom provider
void setConfig(String key, String? value) => SystemConfig.set(key, value);

/// set config into memory or custom provider in async function
Future<void> setConfigAsync(String key, String? value) async =>
    await SystemConfig.setAsync(key, value);

/// remove config into memory or custom provider
void removeConfig(String key) => SystemConfig.remove(key);

/// remove config into memory or custom provider in async function
Future<void> removeConfigAsync(String key) async =>
    await SystemConfig.removeAsync(key);
