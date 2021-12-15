import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class budget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WebView(
          initialUrl: "https://financoinbn.web.app/budget",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
