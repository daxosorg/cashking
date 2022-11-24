import 'dart:convert';
import 'package:get/get.dart';

import '../../../../utils/remote_config.dart';
import '../../home/task_detail_model.dart';

class OfferDetailController extends GetxController {
  RxList<TaskDetail> taskDetail = <TaskDetail>[].obs;

  @override
  Future<void> onInit() async {
    taskDetail.value = List<TaskDetail>.from(jsonDecode(remoteConfig.getString('details')).map((x) => TaskDetail.fromJson(x)));
    print(remoteConfig.getString('details'));
    super.onInit();
  }
}
