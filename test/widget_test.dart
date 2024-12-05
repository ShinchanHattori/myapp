import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myapp/main.dart'; // Make sure to import your app

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build the widget tree.
    await tester.pumpWidget(MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that the counter has incremented to 1.
    expect(find.text('1'), findsOneWidget);
  });
}
