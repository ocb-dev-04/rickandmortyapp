import 'package:get/get.dart';
import 'package:rickandmortyapptest/app/core/contracts/rick_and_morty.dart';
import 'package:rickandmortyapptest/app/core/services/rick_and_morty.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<RickAndMortyServiceContract>(RickAndMortyServices(), permanent: true);
  }
}
