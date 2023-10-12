import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:project_3/app/modules/mainapppage/view/mainpage_view.dart';


void main() async {
  await GetStorage.init();
  runApp(const MainAppPageView());
}
class MainAppPage extends StatelessWidget {
  const MainAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainAppPageView();
  }
}

