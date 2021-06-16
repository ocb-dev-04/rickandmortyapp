import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/list_items_controller.dart';

class ListItemsView extends GetView<ListItemsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListItemsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ListItemsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
