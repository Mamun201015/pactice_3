import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_3/app/modules/home/controller/home_controller.dart';
import 'package:project_3/app/widget/KappPage.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      appBar: KAppBar(title: "HomePage"),
      body: Column(
        children: [],
      ),
    );
  }
}
