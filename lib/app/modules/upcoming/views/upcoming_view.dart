import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/upcoming_controller.dart';

class UpcomingView extends GetView<UpcomingController> {
  const UpcomingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'UpcomingView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
