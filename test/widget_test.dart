import 'package:flutter_test/flutter_test.dart';
import 'package:myapp/main.dart';

void main() {
  testWidgets('JustduItApp renders LoginScreen as default route',
      (WidgetTester tester) async {
    // Build our app
    await tester.pumpWidget(const JustduitApp());

    // Pastikan LoginScreen muncul
    expect(find.text('Hi, Welcome Back to Justduit'), findsOneWidget);
  });
}
