// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:untitled1/main.dart';

void main() {

  testWidgets('Email and password is required', (WidgetTester tester) async {
    // Build our LoginPage and trigger a frame.
  //  await tester.pumpWidget(MaterialApp(home: LoginPage()));
    await tester.pumpAndSettle();

    // Verify that our counter starts at 0.
    expect(find.text('Email'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);

    // Tap the 'Login' icon and trigger a frame.
    await tester.tap(find.text('Login'));
    await tester.pumpAndSettle();

    // Verify that our counter has incremented.
    expect(find.text('Please enter your email'), findsOneWidget);
    expect(find.text('Please enter your password'), findsOneWidget);
  });
}
