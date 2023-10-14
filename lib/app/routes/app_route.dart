part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const splashscreen = _path.splashScreen;
  static const mainAppScreen = _path.mainAppScreen;
  static const userInputScreen = _path.userInputScreen;
  static const homescreen = _path.homescreen;
}

abstract class _path {
  _path._();
  static const splashScreen = "/";
  static const mainAppScreen = "/mainAppScreen";
  static const userInputScreen = "/userInputScreen";
  static const homescreen = "/homeSereen";
}
