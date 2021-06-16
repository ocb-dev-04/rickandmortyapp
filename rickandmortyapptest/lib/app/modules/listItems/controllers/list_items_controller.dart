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
      final searchValue = searchController.text.toLowerCase().trimRight().trimLeft();
      final temp = allCharactersTemp.value.results!;
      if (searchValue.isNotEmpty) {
        allCharacters.value = RAndMCharacters(info: null, results: temp.where((w) => w.name!.toLowerCase().contains(searchValue)).toList());
      } else if (searchValue.isEmpty) {
        allCharacters.value = allCharactersTemp.value;
      }
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
      allCharactersTemp.value = allCharacters.value;
      print('El total de resultados es de => ${allCharacters.value.results!.length}');
      print('El total de resultados de temp es de => ${allCharactersTemp.value.results!.length}');
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
