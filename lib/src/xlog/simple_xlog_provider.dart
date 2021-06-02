import 'xlog_provider.dart';

class SimpleXLogProvider with XLogProvider {
  final String? _prefix;

  SimpleXLogProvider(this._prefix);

  @override
  void debug(data, [List? args]) {
    show(XLogType.DEBUG, _prefix, data, args);
  }

  @override
  void error(data, [List? args]) {
    show(XLogType.ERROR, _prefix, data, args);
  }

  @override
  void info(data, [List? args]) {
    show(XLogType.INFO, _prefix, data, args);
  }

  @override
  void success(data, [List? args]) {
    show(XLogType.SUCCESS, _prefix, data, args);
  }

  @override
  void trace(data, [List? args]) {
    show(XLogType.TRACE, _prefix, data, args);
  }

  @override
  void warning(data, [List? args]) {
    show(XLogType.WARNING, _prefix, data, args);
  }
}
