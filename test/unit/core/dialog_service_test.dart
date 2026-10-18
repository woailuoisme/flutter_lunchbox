import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:lunchbox/core/services/dialog_service.dart';
import 'package:lunchbox/i18n/translations.g.dart';

void main() {
  late GlobalKey<NavigatorState> navigatorKey;
  late DialogService service;

  setUp(() {
    navigatorKey = GlobalKey<NavigatorState>();
    service = DialogService(navigatorKey: navigatorKey);
  });

  Future<void> pumpHost(WidgetTester tester) {
    return tester.pumpWidget(
      TranslationProvider(
        child: MaterialApp(navigatorKey: navigatorKey, home: const Scaffold()),
      ),
    );
  }

  testWidgets('showConfirm 确认返回 true', (tester) async {
    await pumpHost(tester);

    final result = service.showConfirm(message: '确认删除？');
    await tester.pumpAndSettle();
    await tester.tap(find.byType(FilledButton));
    await tester.pumpAndSettle();

    expect(await result, isTrue);
  });

  testWidgets('showConfirm 取消返回 false', (tester) async {
    await pumpHost(tester);

    final result = service.showConfirm(message: '确认删除？');
    await tester.pumpAndSettle();
    await tester.tap(find.byType(TextButton));
    await tester.pumpAndSettle();

    expect(await result, isFalse);
  });

  testWidgets('showConfirm 点遮罩返回 null', (tester) async {
    await pumpHost(tester);

    final result = service.showConfirm(message: '确认删除？');
    await tester.pumpAndSettle();
    await tester.tapAt(const Offset(10, 10));
    await tester.pumpAndSettle();

    expect(await result, isNull);
  });

  testWidgets('showError 弹出后可关闭', (tester) async {
    await pumpHost(tester);

    unawaited(service.showError(message: '出错了'));
    await tester.pumpAndSettle();

    expect(find.text('出错了'), findsOneWidget);

    await tester.tap(find.byType(TextButton));
    await tester.pumpAndSettle();

    expect(find.text('出错了'), findsNothing);
  });
}
