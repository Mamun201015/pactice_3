part of 'app_pages.dart';

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
        binding:   UserInputbindigs()),
         
  ];
}
