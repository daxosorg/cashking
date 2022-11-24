import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/offer_detail_controller.dart';

class OfferDetailView extends GetView<OfferDetailController> {
  OfferDetailView({Key? key}) : super(key: key);
  dynamic arguments = Get.arguments;
  @override
  Widget build(BuildContext context) {
    Get.lazyPut<OfferDetailController>(() => OfferDetailController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Offer detail', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
      backgroundColor: Colors.blue,
      body: Container(
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
        ),
        alignment: Alignment.topCenter,
        child: Row(
          children: [
            Container(
              height: 109,
              width: 109,
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(image: NetworkImage(arguments[0]), fit: BoxFit.cover),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(controller.taskDetail[arguments[4]].title!, maxLines: 1, overflow: TextOverflow.clip, style: const TextStyle(fontWeight: FontWeight.w500)),
                const SizedBox(height: 5),
                Text('⚡ ${arguments[3]}', style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 10)),
                const SizedBox(height: 5),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(4)),
                    border: Border.all(color: Colors.blue),
                  ),
                  padding: const EdgeInsets.all(4),
                  child: Text('Get Rs. ${controller.taskDetail[arguments[4]].payoutAmt}',
                      style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.blue)),
                ),
                const SizedBox(height: 5),
                const Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: Text('⚡ 45', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 10)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
