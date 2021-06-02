import 'xlog_factory.dart';
import 'xlog_provider.dart';

class XLog {
  static XLogProvider logger = XLogFactory.getSimpleLogger('XLOG');

  static void success(dynamic data, [List? args]) {
    logger.success(data, args);
  }

  static void info(dynamic data, [List? args]) {
    logger.info(data, args);
  }

  static void warning(dynamic data, [List? args]) {
    logger.warning(data, args);
  }

  static void error(dynamic data, [List? args]) {
    logger.error(data, args);
  }

  static void debug(dynamic data, [List? args]) {
    logger.debug(data, args);
  }

  static void trace(dynamic data, [List? args]) {
    logger.trace(data, args);
  }
}
