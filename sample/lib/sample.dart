import 'dart:io' as io;

class SampleClass {
  SampleClass() : stdin = io.stdin;

  final io.Stdin stdin;
}
