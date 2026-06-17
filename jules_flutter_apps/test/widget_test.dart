import 'package:flutter_test/flutter_test.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'package:jules_flutter_apps/main.dart';

import 'package:webview_flutter_android/webview_flutter_android.dart';

void main() {
  testWidgets('WebView page loads smoke test', (WidgetTester tester) async {
    // Register the Android implementation of WebViewPlatform for the test
    WebViewPlatform.instance = AndroidWebViewPlatform();
    
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the AppBar title exists.
    expect(find.text('Flutter WebView'), findsOneWidget);

    // Verify that a WebViewWidget is present.
    expect(find.byType(WebViewWidget), findsOneWidget);
  });
}
