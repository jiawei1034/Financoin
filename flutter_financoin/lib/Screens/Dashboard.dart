import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WebView(
          initialUrl: "https://dingdonglearning.com/Dashboard",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
