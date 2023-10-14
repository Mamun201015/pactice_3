import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:project_3/app/modules/home/bindigs/home_bindings.dart';
import 'package:project_3/app/modules/home/view/home_view.dart';
import 'package:project_3/app/modules/mainapppage/bindings/mainpage_bindings.dart';
import 'package:project_3/app/modules/mainapppage/view/mainpage_view.dart';
import 'package:project_3/app/modules/splashscreen/bindings/splash_bindings.dart';
import 'package:project_3/app/modules/splashscreen/view/splash_view.dart';
import 'package:project_3/app/modules/userInput/bindings/userinput_bindings.dart';
import 'package:project_3/app/modules/userInput/view/userinput_view.dart';

part 'app_route.dart';

class AppPages {
  static const initialpages = Routes.splashscreen;
  static final pages = [
    GetPage(
        name: _path.splashScreen,
        page: () => const SplashView(),
        binding: Splashbindings()),
    GetPage(
        name: _path.mainAppScreen,
        page: () => const MainAppPageView(),
        binding: MainAppPagebindings()),
    GetPage(
        name: _path.userInputScreen,
        page: () => const UserInputView(),
        binding: UserInputbindigs()),
          GetPage(
        name: _path.homescreen,
        page: () => const HomeView(),
        binding: HomeBindigs()),
  ];
}
