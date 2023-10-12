import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_3/app/modules/mainapppage/controller/mainpage_controller.dart';
import 'package:project_3/app/modules/userInput/controller/userinput_controller.dart';

class UserInputView extends GetView<UserInputController> {
  const UserInputView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MainAppPageController());
    return Scaffold(
      appBar: KAppBar(
        title: ("DarK&Light Mode"),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("User Input data"),
          ],
        ),
      ),
    );
  }
}

class KAppBar extends StatelessWidget implements PreferredSizeWidget {
  const KAppBar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MainAppPageController());
    return AppBar(
      title: Text(title),
      actions: [
        Obx(() => IconButton(
            onPressed: () {
              controller.changeTheme();
            },
            icon: controller.theme.value
                ? Icon(Icons.dark_mode)
                : Icon(Icons.light_mode)))
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(70);
}
