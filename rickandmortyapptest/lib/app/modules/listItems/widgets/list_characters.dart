import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rickandmortyapptest/app/modules/listItems/controllers/list_items_controller.dart';

class ListAllCharacters extends GetView<ListItemsController> {
  const ListAllCharacters();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView.separated(
        itemBuilder: (widget, i) {
          final data = controller.allCharacters.value.results;
          return ListTile(
            leading: Hero(
              tag: data![i].id!.toString(),
              child: Image.network(data[i].image!),
            ),
            title: Text(data[i].name!),
            subtitle: Text(data[i].species!),
            trailing: Text(data[i].gender!),
            onTap: () => controller.goToDetails(data[i]),
          );
        },
        separatorBuilder: (widget, i) => Divider(),
        itemCount: controller.allCharacters.value.results!.length,
      ),
    );
  }
}
