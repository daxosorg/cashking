import 'package:cashking/app/modules/home/task_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../all offers/views/all_offers_view.dart';
import '../../gifts/views/gifts_view.dart';
import '../../my offers/views/my_offers_view.dart';
import '../../upcoming/views/upcoming_view.dart';

class HomeController extends GetxController {
  List<Tab> homeTabs = const [
    Tab(icon: Icon(Icons.ac_unit), text: "All Offers"),
    Tab(icon: Icon(Icons.ac_unit), text: "Gifts"),
    Tab(icon: Icon(Icons.ac_unit), text: "Upcoming"),
    Tab(icon: Icon(Icons.ac_unit), text: "My Offers"),
  ];
  List<Widget> screens = const [AllOffersView(), GiftsView(), UpcomingView(), MyOffersView()];
  RxList<Task> tasks = <Task>[].obs;
}
