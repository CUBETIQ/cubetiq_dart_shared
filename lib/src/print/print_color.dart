import 'package:ansicolor/ansicolor.dart';

AnsiPen _green = AnsiPen()..green();
AnsiPen _red = AnsiPen()..red();
AnsiPen _white = AnsiPen()..white();
AnsiPen _yellow = AnsiPen()..yellow();
AnsiPen _gray = AnsiPen()..gray();
AnsiPen _magenta = AnsiPen()..magenta();
AnsiPen _cyan = AnsiPen()..cyan();

class PrintColor {
  static final _pattern = RegExp('.{1,800}');

  static void white(text) {
    return _pattern
        .allMatches(text)
        .forEach((match) => print(_white(match.group(0).toString())));
  }

  static void green(text) {
    return _pattern
        .allMatches(text)
        .forEach((match) => print(_green(match.group(0).toString())));
  }

  static void red(text) {
    return _pattern
        .allMatches(text)
        .forEach((match) => print(_red(match.group(0).toString())));
  }

  static void yellow(text) {
    return _pattern
        .allMatches(text)
        .forEach((match) => print(_yellow(match.group(0).toString())));
  }

  static void gray(text) {
    return _pattern
        .allMatches(text)
        .forEach((match) => print(_gray(match.group(0).toString())));
  }

  static void magenta(text) {
    return _pattern
        .allMatches(text)
        .forEach((match) => print(_magenta(match.group(0).toString())));
  }

  static void cyan(text) {
    return _pattern
        .allMatches(text)
        .forEach((match) => print(_cyan(match.group(0).toString())));
  }
}
