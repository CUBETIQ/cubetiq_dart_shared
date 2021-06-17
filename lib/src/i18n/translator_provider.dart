/// Translate Provider
///
/// @author sombochea
/// @since 1.0.0
abstract class TranslatorProvider {
  bool hasKey(String key);
  String translate(String key,
      {Map<String, dynamic>? params, String? fallback});
}
