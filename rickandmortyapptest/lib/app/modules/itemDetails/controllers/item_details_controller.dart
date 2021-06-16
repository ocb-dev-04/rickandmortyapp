import 'package:get/get.dart';
import 'package:rickandmortyapptest/app/data/models/characters.dart';

class ItemDetailsController extends GetxController {
  late Result singleCharacter;

  @override
  void onInit() {
    super.onInit();
    singleCharacter = Get.arguments as Result;
  }
}
