import 'simple_xlog_provider.dart';
import 'xlog_provider.dart';

class XLogFactory {
  static XLogProvider getSimpleLogger(String? prefix) {
    return SimpleXLogProvider(prefix);
  }

  static XLogProvider getLogger(XLogProvider provider) {
    return provider;
  }
}
