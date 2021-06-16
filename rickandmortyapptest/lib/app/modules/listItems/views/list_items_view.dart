import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rickandmortyapptest/app/modules/gen_widget/btns.dart';
import 'package:rickandmortyapptest/app/modules/gen_widget/input.dart';
import 'package:rickandmortyapptest/app/modules/gen_widget/loading.dart';
import 'package:rickandmortyapptest/app/modules/listItems/widgets/list_characters.dart';

import '../controllers/list_items_controller.dart';

class ListItemsView extends GetView<ListItemsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('All characters'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InputLW(
                  controller: controller.searchController,
                  placeholder: "Escribe el nombre de un personaje",
                ),
              ),
            ),
            Expanded(
              flex: 9,
              child: Obx(
                () => controller.loading ? LoadingCardLW() : ListAllCharacters(),
              ),
            ),
          ],
        ));
  }
}
