import 'package:sample/sample.dart';
import 'package:test/test.dart';

void main() {
  test('stdio', () {
    final foo = SampleClass();
    expect(foo, isNotNull);
  });

  test('another test', () async {
    await Future.delayed(const Duration(seconds: 1));
  });
}
