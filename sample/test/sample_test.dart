import 'package:sample/sample.dart';
import 'package:test/test.dart';
import 'dart:io' as io;

void main() {
  test('stdio', () {
    final input = io.stdin;
    io.stdioType(input);
    expect(input, isNotNull);
  });

  test('another test', () async {
    await Future.delayed(const Duration(seconds: 1));
    expect(true, isTrue);
  });
}
