import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/gifts_controller.dart';

class GiftsView extends GetView<GiftsController> {
  const GiftsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'GiftsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
