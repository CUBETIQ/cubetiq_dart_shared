import 'text_formatter.dart';

class StringUtils {
  /// Format number with precision
  static String format(double n, [int precision = 2]) {
    return n.toStringAsFixed(n.truncateToDouble() == n ? precision : precision);
  }

  /// Format number from String with precision
  static String formatFromString(String? text, [int precision = 2]) {
    text ??= '0.0';
    var n = double.parse(text);
    return n.toStringAsFixed(n.truncateToDouble() == n ? precision : precision);
  }

  /// Text formatter with custom args
  static TextFormatter textFormatter(String? text, {bool translate = false}) =>
      TextFormatter(text).translate(translate: translate);

  /// Text format with custom args
  static String? textFormat(String? text,
          {List<dynamic>? args, bool translate = false}) =>
      textFormatter(text, translate: translate).format(args: args);

  /// Text decorator with custom key/value params
  static String? decorator(String? text,
          {Map<String, dynamic>? params, bool translate = false}) =>
      textFormatter(text, translate: translate).decorate(params: params);

  static String? asLowerCaseThenTrim(String? text) =>
      text?.toLowerCase().trim();
  static String? asUpperCaseThenTrim(String? text) =>
      text?.toUpperCase().trim();

  /// Check string is null or empty text
  static bool isNullOrEmpty(String? text) {
    if (text == null) return true;
    return text.isEmpty;
  }

  /// Check string is null or empty or blank text
  static bool isNullOrEmptyOrBlank(String? text) {
    if (isNullOrEmpty(text)) {
      return true;
    }
    return text!.trim().isEmpty;
  }

  /// Check string pair is equals or not with ignore-case and trim
  static bool equalsIgnoreCase(String? a, String? b, {trim = false}) {
    if (a == b) {
      return true;
    }

    if (trim == true) {
      a = asLowerCaseThenTrim(a);
      b = asLowerCaseThenTrim(b);
    }

    return a?.toLowerCase() == b?.toLowerCase();
  }
}
