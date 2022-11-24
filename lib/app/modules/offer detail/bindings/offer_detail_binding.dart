import 'package:get/get.dart';

import '../controllers/offer_detail_controller.dart';

class OfferDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OfferDetailController>(
      () => OfferDetailController(),
    );
  }
}
