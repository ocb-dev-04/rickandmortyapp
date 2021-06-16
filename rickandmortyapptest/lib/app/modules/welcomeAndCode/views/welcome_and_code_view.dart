import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rickandmortyapptest/app/modules/welcomeAndCode/widgets/insert_code.dart';
import 'package:rickandmortyapptest/app/modules/welcomeAndCode/widgets/welcome_page.dart';

import '../controllers/welcome_and_code_controller.dart';

class WelcomeAndCodeView extends GetView<WelcomeAndCodeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => controller.loading ? WelcomePage() : CodePage(),
      ),
    );
  }
}
