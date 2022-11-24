import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/my_offers_controller.dart';

class MyOffersView extends GetView<MyOffersController> {
  const MyOffersView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'MyOffersView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
