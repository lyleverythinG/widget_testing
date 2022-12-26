import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widget_testing/main.dart';

void main() {
  testWidgets('display name and job test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    //find.byKey means find the particular widget with the particular key name.
    final nameField = find.byKey(const Key('name'));
    final jobField = find.byKey(const Key('job'));
    //find.text means find the widget with the particular text.
    final button = find.text('Display Name With Job Title');
    //tester.enterText means enter a text in a TextField,TextFormField for example.
    await tester.enterText(nameField, 'Lyle Dane M. Carcedo');
    await tester.enterText(jobField, 'Software Engineer');
    //this line means do the tap action for this widget.
    await tester.tap(button);
    //triggers a frame(one frame) for the test.
    //if you have a test that needs more than a frame like testing animations, used pumpAndSettle instead.
    await tester.pump();
    expect(
        find.text(
            'My name is Lyle Dane M. Carcedo. My Job is a Software Engineer'),
        findsOneWidget);
  });
}
