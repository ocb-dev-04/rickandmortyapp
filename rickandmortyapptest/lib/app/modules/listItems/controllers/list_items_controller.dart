import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:rickandmortyapptest/app/core/contracts/rick_and_morty.dart';
import 'package:rickandmortyapptest/app/data/models/characters.dart';
import 'package:rickandmortyapptest/app/modules/gen_widget/snackbars.dart';
import 'package:rickandmortyapptest/app/routes/app_pages.dart';

class ListItemsController extends GetxController {
  RxBool _loading = true.obs;
  bool get loading => _loading.value;

  Rx<RAndMCharacters> allCharacters = RAndMCharacters().obs;
  Rx<RAndMCharacters> allCharactersTemp = RAndMCharacters().obs;
  late RickAndMortyServiceContract _services;
  late TextEditingController searchController;

  @override
  void onInit() {
    super.onInit();
    searchController = TextEditingController();
    searchController.addListener(() {
      print('Some');
      if (searchController.text.isNotEmpty) {
        final searchValue = searchController.text.toLowerCase().trimRight().trimLeft();
        allCharacters.value =
            RAndMCharacters(info: null, results: allCharactersTemp.value.results!.where((w) => w.name!.toLowerCase().contains(searchValue)).toList());
      } else {
        allCharacters = allCharactersTemp;
      }
      update();
    });
    _services = Get.find<RickAndMortyServiceContract>();
  }

  @override
  void onReady() {
    super.onReady();
    loadCharacters();
  }

  void searchListener() {}

  Future<void> loadCharacters() async {
    startLoading();
    try {
      allCharacters.value = await _services.getAllCharacters();
      allCharactersTemp = allCharacters;
    } catch (e) {
      CustomSnackbars.showSnackbar(
        title: "Error",
        message: "Ocurrio un problema al acceder al listado",
        type: Snackbartype.Bad,
      );
    } finally {
      stopLoading();
    }
  }

  void goToDetails(Result info) => Get.toNamed(Routes.ITEM_DETAILS, arguments: info);

  void startLoading() => _loading.value = true;
  void stopLoading() => _loading.value = false;
}
