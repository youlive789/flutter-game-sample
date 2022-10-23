import 'package:game/service/home/home_controller.dart';
import 'package:get/get.dart';

class DependancyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
