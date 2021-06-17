import 'package:cubetiq/i18n_translator.dart';

/// Text Formatter
///
/// @author sombochea
/// @since 1.0.0
class TextFormatter {
  String? text;

  TextFormatter(String? text) {
    this.text = text;
  }

  TextFormatter translate({bool translate = true}) {
    if (translate && text != null && text?.isNotEmpty == true) {
      text = TranslatorFactory.translate(text!);
    }

    return this;
  }

  String? format({List<dynamic>? args}) {
    if (text == null) {
      return null;
    }

    if (args == null || args.isEmpty == true) {
      return text;
    }

    var msg = text;
    args.asMap().forEach((index, element) {
      var _replaced = '';
      if (element != null) {
        _replaced = element.toString();
      }

      msg = msg?.replaceAll('{$index}', _replaced);
    });

    return msg;
  }

  String? decorate({Map<String, dynamic>? params}) {
    if (text == null) {
      return null;
    }

    if (params == null || params.isEmpty == true) {
      return text;
    }

    var msg = text;
    params.forEach((index, element) {
      var _replaced = '';
      if (element != null) {
        _replaced = element.toString();
      }

      msg = msg?.replaceAll('{$index}', _replaced);
    });

    return msg;
  }
}
