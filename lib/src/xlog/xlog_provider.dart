import 'dart:convert';

import 'package:cubetiq/src/print/print_color.dart';
import 'package:cubetiq/text.dart';
import 'package:cubetiq/utils.dart';

enum XLogType { SUCCESS, INFO, ERROR, WARNING, DEBUG, TRACE }

abstract class XLogProvider {
  bool isEnabled(XLogType type) {
    return true;
  }

  /// Example Format
  /// [TYPE] 2021-01-31 12:30:00.0000: PREFIX => DATA
  void show(XLogType type, String? prefix, dynamic data, [List? args]) {
    if (!isEnabled(type)) {
      return;
    }

    prefix ??= '';
    data = jsonEncode(data);

    var content = '';
    if (args == null || args.isEmpty) {
      content = data;
    } else {
      content = StringUtils.textFormat(data, args) ?? 'null';
    }

    var text = '[$type] ${nowToString()}: $prefix => $content'.trim();

    switch (type) {
      case XLogType.SUCCESS:
        PrintColor.green(text);
        break;
      case XLogType.INFO:
        PrintColor.cyan(text);
        break;
      case XLogType.WARNING:
        PrintColor.yellow(text);
        break;
      case XLogType.ERROR:
        PrintColor.red(text);
        break;
      case XLogType.DEBUG:
        PrintColor.gray(text);
        break;
      case XLogType.TRACE:
        PrintColor.magenta(text);
        break;
      default:
        print(text);
        break;
    }
  }

  void success(dynamic data, [List? args]);

  void info(dynamic data, [List? args]);

  void warning(dynamic data, [List? args]);

  void debug(dynamic data, [List? args]);

  void error(dynamic data, [List? args]);

  void trace(dynamic data, [List? args]);
}
