import 'dart:developer' as developer;

class ColorsText {
  static void red(Object? value) {
    print('\x1b[31m$value\x1b[0m');
  }

  static void printWarning(Object? text) {
    print('\x1B[33m$text\x1B[0m');
  }

  static void printS(Object? text) {
    developer.log('\x1B[32m$text\x1B[0m');
  }

  static void printGreen(Object? text) {
    print('\x1B[32m$text\x1B[0m');
  }
}
