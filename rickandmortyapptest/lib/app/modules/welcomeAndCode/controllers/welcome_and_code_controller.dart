import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:rickandmortyapptest/app/modules/gen_widget/snackbars.dart';
import 'package:rickandmortyapptest/app/routes/app_pages.dart';

class WelcomeAndCodeController extends GetxController {
  RxBool _loading = true.obs;
  bool get loading => _loading.value;

  late TextEditingController codeController;

  @override
  void onInit() {
    super.onInit();
    codeController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(seconds: 2), stopWelcome);
  }

  @override
  void onClose() {
    codeController.dispose();
    super.onClose();
  }

  void stopWelcome() {
    _loading.value = false;
  }

  void validateCode() {
    final String code = codeController.text;

    // like test@trii.co : good
    // like test or test@ or test@domain : bad
    if (code.isEmpty || !code.isEmail) {
      CustomSnackbars.showSnackbar(
        title: "Error",
        message: "El codigo no es valido",
        type: Snackbartype.Bad,
      );
      return;
    }

    Get.offAllNamed(Routes.LIST_ITEMS);
  }
}
