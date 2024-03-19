import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewClass extends StatefulWidget {
  const WebViewClass({super.key});

  @override
  State<WebViewClass> createState() => _WebViewClassState();
}

class _WebViewClassState extends State<WebViewClass> {
  WebViewController webController = WebViewController()
    ..setJavaScriptMode(JavaScriptMode
        .unrestricted) // JavaScriptMode.unrestricted is for not to  adds while .enabled is to show adds
    ..setNavigationDelegate(
      NavigationDelegate(
        onPageStarted: (url) {
          print('$url is loading');
        },
      ),
    )
    ..loadRequest(Uri.parse('http://goggle.com'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WebView Class'),
      ),
      body: WebViewWidget(
        controller: webController,
      ),
    );
  }
}
