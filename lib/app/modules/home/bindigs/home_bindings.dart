import 'package:get/get.dart';
import 'package:project_3/app/modules/home/controller/home_controller.dart';

class HomeBindigs extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
