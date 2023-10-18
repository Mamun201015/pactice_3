import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_3/app/modules/home/view/home_view.dart';

class UserInputController extends GetxController {
  TextEditingController textEditingController = TextEditingController();

  @override
  void onClose() {
    textEditingController.dispose();
    super.onClose();
  }

  changedata() {
    if (textEditingController.text == "") {
      Get.snackbar("User Input", "Emtry");
    } else if (textEditingController.text.contains(" ")) {
      Get.snackbar("User Input", "Text Field are Invalid");
    } else {
      Get.to(() => HomeView(), arguments: textEditingController.text);
    }
  }
}
