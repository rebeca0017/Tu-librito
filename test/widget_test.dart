// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:my_app/app.dart';
import 'package:my_app/model/app_state_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';

void main() {
  testWidgets('App start test', (tester) async {
    await tester.pumpWidget(
      ChangeNotifierProvider<AppStateModel>(
        create: (context) => AppStateModel()..loadProducts(),
        child: const CupertinoStoreApp(),
      ),
    );
    expect(find.text('Products'), findsOneWidget);
    expect(find.text('Search'), findsOneWidget);
    expect(find.text('Cart'), findsOneWidget);
  });
}
