import 'package:cubetiq/xlog.dart';

void main(List<String> args) {
  XLog.error('My some error here {0} and me {1}', ['Sambo', 'Chea']);

  XLog.debug('My some error here {0} and me {1}', ['Sambo', 'Chea']);

  XLog.info('My some error here {0} and me {1}', ['Sambo', 'Chea']);

  XLog.success('My some error here {0} and me {1}', ['Sambo', 'Chea']);

  XLog.trace('My some error here {0} and me {1}', ['Sambo', 'Chea']);

  XLog.warning('My some error here {0} and me {1}', ['Sambo', 'Chea']);

  XLog.warning(null);

  var json = Person(1, 'Sambo');

  XLog.warning(json, [null, null]);
}

class Person {
  final id;
  final name;

  Person(this.id, this.name);

  Map toJson() => {
        'id': id,
        'name': name,
      };
}
