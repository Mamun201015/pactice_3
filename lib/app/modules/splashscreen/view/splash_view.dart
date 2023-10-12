import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:project_3/app/modules/splashscreen/controller/spalash_controller.dart';

class SplashView extends GetView<SplashController>  {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
            
            SizedBox(
              height: Get.width / 10,
            ),
            SizedBox(
              child: CircularProgressIndicator(
                strokeWidth: 5,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Loading.....",
               style: TextStyle(color: Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}
