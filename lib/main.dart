import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'pages/login_page.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';

void main() {
  WebViewPlatform.instance ??= AndroidWebViewPlatform();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VExpert',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}
