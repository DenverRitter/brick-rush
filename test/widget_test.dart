import 'package:flutter_test/flutter_test.dart';
import 'package:brick_rush/main.dart';

void main() {
  testWidgets('Brick Rush inicia corretamente', (WidgetTester tester) async {
    await tester.pumpWidget(const BrickRushApp());

    expect(find.text('BRICK RUSH'), findsOneWidget);
    expect(find.text('JOGAR'), findsOneWidget);
    expect(find.text('INTEGRANTES'), findsOneWidget);
    expect(find.text('CONFIGURAÇÕES'), findsOneWidget);
  });
}
