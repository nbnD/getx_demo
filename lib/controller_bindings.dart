import 'package:get/get.dart';
import 'package:getx_demo/controller/user_controller.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<UserController>(UserController());
  }
}