import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/welcome_and_code_controller.dart';

class WelcomeAndCodeView extends GetView<WelcomeAndCodeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WelcomeAndCodeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'WelcomeAndCodeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
