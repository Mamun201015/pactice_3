import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:project_3/app/modules/userInput/controller/userinput_controller.dart';
import 'package:project_3/app/widget/KappPage.dart';

class UserInputView extends GetView<UserInputController> {
  const UserInputView({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(UserInputController());
    return Scaffold(
        appBar: KAppBar(
          title: ("UserInput"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: controller.textEditingController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 5),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 5),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  controller.changedata();
                },
                child: Text("Submit")),
          ],
        ));
  }
}
