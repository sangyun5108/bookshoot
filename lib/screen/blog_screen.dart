import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BlogScreen extends StatelessWidget {
  BlogScreen({Key? key, required this.webUrl}) : super(key: key);

  final String webUrl;
  WebViewController? controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF345457),
        title: const Text("Book Shoot"),
        actions: [
          IconButton(
            onPressed: () {
              if(controller == null){
                return;
              }else{
                controller!.loadUrl(webUrl);
              }
            },
            icon: const Icon(Icons.home),
          )
        ],
      ),
      body: WebView(
        initialUrl: webUrl,
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController controller){
          this.controller = controller;
        },
      ),
    );
  }
}
