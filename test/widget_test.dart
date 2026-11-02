import 'package:flutter_test/flutter_test.dart';
import 'package:chrome_os_app/main.dart';

void main() {
  testWidgets('La aplicación Chrome OS inicia correctamente',
      (WidgetTester tester) async {
    await tester.pumpWidget(const ChromeOsApp());

    expect(find.byType(ChromeOsApp), findsOneWidget);
  });
}
