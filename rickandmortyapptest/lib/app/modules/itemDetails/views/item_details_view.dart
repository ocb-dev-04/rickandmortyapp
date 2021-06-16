import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/item_details_controller.dart';

class ItemDetailsView extends GetView<ItemDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ItemDetailsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ItemDetailsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
