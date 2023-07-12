import 'dart:io';

import 'package:dartsand/main.dart';

final String divider = '=' * 50;

void main() {
  if (!Platform.isWindows) {
    print(Process.runSync("clear", [], runInShell: true).stdout);
  }

  print(divider);
  print('> Main function is running...');
  print(DateTime.now());
  print(divider);

  final stopwatch = Stopwatch()..start();
  run();
  print('\n> Done! ${stopwatch.elapsed}ms');
  stopwatch.stop();
}
