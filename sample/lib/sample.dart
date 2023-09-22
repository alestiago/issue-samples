import 'dart:io' as io;

import 'package:args/command_runner.dart';

class SampleClass extends CommandRunner {
  SampleClass()
      : exit = io.exit,
        stdin = io.stdin,
        super('', '');

  final io.Stdin stdin;
  final Never Function(int) exit;
}
