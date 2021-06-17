import 'package:cubetiq/text.dart';
import 'package:test/test.dart';

void main() {
  test('text formatter function format', () {
    var text1 = 'Hello, {0}!';
    var result1 = TextFormatter(text1).format(args: ['Sambo']);

    var text2 = 'Hello, {name}!';
    var result2 = TextFormatter(text2).decorate(params: {'name': 'Chea'});

    expect('Hello, Sambo!', result1);
    expect('Hello, Chea!', result2);
  });
}
