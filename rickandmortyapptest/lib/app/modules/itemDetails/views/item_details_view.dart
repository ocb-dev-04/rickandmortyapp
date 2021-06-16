import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rickandmortyapptest/app/modules/gen_widget/main_container.dart';
import 'package:rickandmortyapptest/app/modules/gen_widget/text_labels.dart';

import '../controllers/item_details_controller.dart';

class ItemDetailsView extends GetView<ItemDetailsController> {
  @override
  Widget build(BuildContext context) {
    final characterInfo = controller.singleCharacter;
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("Informacion del personaje"),
        centerTitle: true,
      ),
      body: MainContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: size.width - 200,
              width: size.width - 200,
              child: Hero(
                tag: characterInfo.id!.toString(),
                child: Image.network(characterInfo.image!),
              ),
            ),
            GenericTextLW(value: characterInfo.name!),
            GenericTextLW(value: characterInfo.gender!),
            GenericTextLW(value: characterInfo.species!),
            GenericTextLW(value: characterInfo.status!),
            GenericTextLW(value: characterInfo.created!.toString()),
          ],
        ),
      ),
    );
  }
}
