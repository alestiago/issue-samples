import 'package:sample/sample.dart';
import 'package:test/test.dart';
import 'dart:io' as io;

void main() {
  test('stdio', () {
    final input = io.stdin;
    final type = io.stdioType(input);
    expect(input, isNotNull);
    print('type: $type');
  });
}
