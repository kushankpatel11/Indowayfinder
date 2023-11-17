import 'package:get_it/get_it.dart';
import 'package:simple_navigation_app/camera.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton<CameraService>(() => CameraService());
}
