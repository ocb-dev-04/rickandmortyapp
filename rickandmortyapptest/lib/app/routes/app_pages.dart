import 'package:get/get.dart';

import 'package:rickandmortyapptest/app/modules/itemDetails/bindings/item_details_binding.dart';
import 'package:rickandmortyapptest/app/modules/itemDetails/views/item_details_view.dart';
import 'package:rickandmortyapptest/app/modules/listItems/bindings/list_items_binding.dart';
import 'package:rickandmortyapptest/app/modules/listItems/views/list_items_view.dart';
import 'package:rickandmortyapptest/app/modules/welcomeAndCode/bindings/welcome_and_code_binding.dart';
import 'package:rickandmortyapptest/app/modules/welcomeAndCode/views/welcome_and_code_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.WELCOME_AND_CODE;

  static final routes = [
    GetPage(
      name: _Paths.WELCOME_AND_CODE,
      page: () => WelcomeAndCodeView(),
      binding: WelcomeAndCodeBinding(),
    ),
    GetPage(
      name: _Paths.LIST_ITEMS,
      page: () => ListItemsView(),
      binding: ListItemsBinding(),
    ),
    GetPage(
      name: _Paths.ITEM_DETAILS,
      page: () => ItemDetailsView(),
      binding: ItemDetailsBinding(),
    ),
  ];
}
