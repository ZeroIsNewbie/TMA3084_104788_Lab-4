import 'package:flutter_test/flutter_test.dart';

import 'package:lab_4/main.dart';

void main() {
  testWidgets('HY Pizza app launches successfully', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    // Verify that the app displays its home page.
    expect(find.text('HY Pizza'), findsOneWidget);
  });
}
