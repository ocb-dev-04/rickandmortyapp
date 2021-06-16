import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rickandmortyapptest/app/constants/theme.dart';
import 'package:rickandmortyapptest/app/modules/gen_widget/input.dart';
import 'package:rickandmortyapptest/app/modules/gen_widget/main_container.dart';
import 'package:rickandmortyapptest/app/modules/welcomeAndCode/controllers/welcome_and_code_controller.dart';

class CodePage extends GetView<WelcomeAndCodeController> {
  const CodePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MainContainer(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InputLW(
              controller: controller.codeController,
              placeholder: "Ingresa tu código",
            ),
            const SizedBox(height: 20),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(AppTheme.white),
                backgroundColor: MaterialStateProperty.all<Color>(AppTheme.blue),
              ),
              onPressed: controller.validateCode,
              child: Text('Todo Listo'),
            )
          ],
        ),
      ),
    );
  }
}
