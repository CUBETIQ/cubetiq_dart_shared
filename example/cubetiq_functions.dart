import 'package:cubetiq/src/text/functions.dart';
import 'package:cubetiq/src/xlog/xlog.dart';

void main(List<String> args) {
  XLog.debug(StringUtils.format(10.5555, 2));
  XLog.debug(StringUtils.formatFromString('10.5555', 2));
}