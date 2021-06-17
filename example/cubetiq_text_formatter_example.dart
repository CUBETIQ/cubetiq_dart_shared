import 'package:cubetiq/text.dart';

void main(List<String> args) {
  var text1 = 'Hello, {0}, then do this it by {1}!';
  var text2 = 'Hello, {firstName}, then do this it by {lastName}!';
  var result1 = TextFormatter(text1).format(args: ['Sambo', 'Chea']);
  var result2 = TextFormatter(text2).decorate(params: {
    'firstName': 'Sambo',
    'lastName': 'Chea',
  });

  print('Result 1 => $result1');
  print('Result 2 => $result2');
}
