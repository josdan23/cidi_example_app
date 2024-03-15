import 'package:cidi_example_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('test end to end', () {
    testWidgets(
      'tocar el botón de contador, verificar el contador',
      (tester) async {
        await tester.pumpWidget(const MyApp());

        expect(find.text('0'), findsOneWidget);

        final fab = find.byKey(const Key('increment'));

        await tester.tap(fab);

        await tester.pumpAndSettle();

        expect(find.text('1'), findsOneWidget);
      },
    );
  });
}
