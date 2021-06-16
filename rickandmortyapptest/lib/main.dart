import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rickandmortyapptest/app/core/core_config/main_bonding.dart';

import 'app/routes/app_pages.dart';

void main() => runApp(MainPage());

class MainPage extends StatelessWidget {
  const MainPage();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Rick and Morty",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      initialBinding: MainBinding(),
    );
  }
}
