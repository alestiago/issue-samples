import 'dart:io' as io;

class SampleClass {
  SampleClass()
      : exit = io.exit,
        stdin = io.stdin;

  final io.Stdin stdin;
  final Never Function(int) exit;
}
