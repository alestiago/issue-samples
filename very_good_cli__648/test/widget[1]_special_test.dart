import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vgvtest_648/widget%5B1%5D_special.dart';

void main() {
  group('$SpecialWidget', () {
    testWidgets('pumps', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: SpecialWidget()));
      expect(find.byType(SpecialWidget), findsOneWidget);
    });
  });
}
