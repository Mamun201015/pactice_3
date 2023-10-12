import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/state_manager.dart';

import 'package:project_3/storage/localdata.dart';

class MainAppPageController extends GetxController {
  RxBool theme = false.obs;
  @override
  void onInit() {
    cheakTheme();

    super.onInit();
  }

  cheakTheme() async {
    theme.value = await Localdata().getThemeData();
  }
}
