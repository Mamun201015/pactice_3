import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:project_3/app/modules/mainapppage/bindings/mainpage_bindings.dart';
import 'package:project_3/app/modules/mainapppage/view/mainpage_view.dart';
import 'package:project_3/app/modules/splashscreen/bindings/splash_bindings.dart';
import 'package:project_3/app/modules/splashscreen/view/splash_view.dart';




part  'app_route.dart';

abstract class Routes {
  Routes._();
  static const splashscreen = _path.splashScreen;
  static const mainAppScreen= _path.mainAppScreen;
   
}

abstract class _path {
  _path._();
  static const splashScreen = "/";
  static const mainAppScreen = "/mainAppScreen";
  
}
