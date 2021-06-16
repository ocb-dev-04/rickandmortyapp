import 'package:get/get.dart';

import '../controllers/welcome_and_code_controller.dart';

class WelcomeAndCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WelcomeAndCodeController>(
      () => WelcomeAndCodeController(),
    );
  }
}
