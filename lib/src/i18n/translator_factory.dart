import 'translator_provider.dart';

/// Translate Factory
///
/// @author sombochea
/// @since 1.0.0
class TranslatorFactory {
  static TranslatorProvider? _provider;
  static void setProvider(TranslatorProvider provider) {
    _provider = provider;
  }

  static bool hasProvider() => _provider != null;

  static bool hasKey(String key) {
    if (hasProvider()) {
      return _provider!.hasKey(key);
    }

    return false;
  }

  static String translate(
    String key, {
    Map<String, dynamic>? params,
    String? fallback,
  }) {
    if (hasProvider()) {
      return _provider!.translate(key, params: params, fallback: fallback);
    }

    return fallback ?? key;
  }
}
