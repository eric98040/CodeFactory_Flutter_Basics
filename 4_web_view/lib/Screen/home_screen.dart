import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  WebViewController? controller;
  final homeurl = 'https://github.com/eric98040';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2596be),
        title: Text('Jaewon Kim'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              // 변수가 절대 null을 가지지 않을 경우 뒤에 !를 표시
              // http://
              // https://
               (controller != null) ? controller!.loadUrl(homeurl) : null;
            },
            icon: Icon(Icons.home),
          )
        ],
      ),
      body: WebView(
        onWebViewCreated: (WebViewController controller) {
          setState(() {
            this.controller = controller;
          });
        },
        initialUrl: homeurl,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
