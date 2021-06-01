/// Text Formatter
///
/// @author sombochea
/// @since 1.0.0
class TextFormatter {
  String? text;

  TextFormatter(String? text) {
    this.text = text;
  }

  String? format(List<dynamic> args) {
    if (text == null) {
      return null;
    }

    if (args.isEmpty) {
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

  String? decorate(Map<String, dynamic> params) {
    if (text == null) {
      return null;
    }

    if (params.isEmpty) {
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
