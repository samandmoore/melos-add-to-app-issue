import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zeeplugin/zeeplugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('zeeplugin');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await Zeeplugin.platformVersion, '42');
  });
}
