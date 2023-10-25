import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebpageView extends StatelessWidget {
  const WebpageView({super.key});

  @override
  Widget build(BuildContext context) {
  final controller=  Get.put(WebViewController());
    return Scaffold(
      body: WebViewWidget(controller: controller),
    );
  }
}
