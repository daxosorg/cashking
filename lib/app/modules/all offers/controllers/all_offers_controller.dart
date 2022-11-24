import 'dart:convert';

import 'package:cashking/app/modules/home/task_detail_model.dart';
import 'package:cashking/app/modules/home/task_model.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:get/get.dart';

import '../../../../utils/remote_config.dart';

class AllOffersController extends GetxController {
  RxList<Task> tasks = <Task>[].obs;
  Rx<TaskDetail> taskDetail = TaskDetail().obs;

  @override
  Future<void> onInit() async {
    await remoteConfig.setConfigSettings(RemoteConfigSettings(fetchTimeout: const Duration(minutes: 1), minimumFetchInterval: const Duration(seconds: 1)));
    await remoteConfig.fetchAndActivate();
    tasks.value = List<Task>.from(jsonDecode(remoteConfig.getString('tasks')).map((x) => Task.fromJson(x)));
    super.onInit();
  }
}
