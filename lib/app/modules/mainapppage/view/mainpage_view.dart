import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_3/app/modules/mainapppage/controller/mainpage_controller.dart';
import 'package:project_3/app/routes/app_pages.dart';
import 'package:project_3/theme/dark.dart';
import 'package:project_3/theme/light.dart';

class MainAppPageView extends GetView<MainAppPageController> {
  const MainAppPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MainAppPageController());
    return GetMaterialApp(
      themeMode: controller.theme.value ? ThemeMode.light : ThemeMode.dark,
      theme: lighttheme,
      darkTheme: darktheme,
      initialRoute: AppPages.initialpages,
      getPages: AppPages.pages,
    );
  }
}
