import 'package:cubetiq/src/json.dart';
import 'package:cubetiq/xlog.dart';

void main(List<String> args) {
  XLog.error('My some error here {0} and me {1}', ['Sambo', 'Chea']);

  XLog.debug('My some error here {0} and me {1}', ['Sambo', 'Chea']);

  XLog.info('My some error here {0} and me {1}', ['Sambo', 'Chea']);

  XLog.success('My some error here {0} and me {1}', ['Sambo', 'Chea']);

  XLog.trace('My some error here {0} and me {1}', ['Sambo', 'Chea']);

  XLog.warning('My some error here {0} and me {1}', ['Sambo', 'Chea']);

  XLog.warning(null);

  var person = Person(1, 'Sambo');

  XLog.warning(person, [null, null]);
}

class Person implements ToJson {
  final id;
  final name;

  Person(this.id, this.name);

  @override
  Map toJson() => {
        'id': id,
        'name': name,
      };
}
