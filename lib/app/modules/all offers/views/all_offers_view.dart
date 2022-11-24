import 'package:cashking/utils/hex_color_generator.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/all_offers_controller.dart';

class AllOffersView extends GetView<AllOffersController> {
  const AllOffersView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut<AllOffersController>(() => AllOffersController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
        child: Obx(
          () => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "⚡ Trending Items",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff7C7C7C)),
              ),
              const SizedBox(height: 8),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: controller.tasks
                      .map(
                        (element) => InkWell(
                          onTap: () => Get.toNamed(
                            Routes.OFFER_DETAIL,
                            arguments: [
                              element.thumbnail,
                              element.title,
                              element.payoutAmt,
                              "Focus on your project, we'll take care of the routine",
                              controller.tasks.indexOf(element),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Column(
                              children: [
                                Container(
                                  height: 127,
                                  width: 181,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
                                    image: DecorationImage(image: NetworkImage(element.thumbnail!), fit: BoxFit.cover),
                                  ),
                                ),
                                Container(
                                  height: 78,
                                  width: 181,
                                  decoration: BoxDecoration(
                                    color: getColorFromHex(element.customData!.dominantColor!),
                                    borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12)),
                                  ),
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(element.title!, maxLines: 1, overflow: TextOverflow.clip, style: const TextStyle(fontWeight: FontWeight.w500)),
                                      Text('Get Rs. ${element.payoutAmt!}', style: const TextStyle(fontWeight: FontWeight.w700)),
                                      Text('⚡ ${element.totalLead!} users', style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 10)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "⚡ More offers",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff7C7C7C)),
              ),
              const SizedBox(height: 8),
              Flexible(
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: controller.tasks
                      .map(
                        (element) => InkWell(
                          onTap: () => Get.toNamed(
                            Routes.OFFER_DETAIL,
                            arguments: [
                              element.thumbnail,
                              element.title,
                              element.payoutAmt,
                              "Focus on your project, we'll take care of the routine",
                              controller.tasks.indexOf(element),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Column(
                              children: [
                                Container(
                                  height: 92,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                                    border: Border.all(color: getColorFromHex(element.customData!.dominantColor!), width: 2),
                                  ),
                                  padding: const EdgeInsets.all(8),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 73,
                                        width: 73,
                                        decoration: BoxDecoration(
                                          color: getColorFromHex(element.customData!.dominantColor!),
                                          borderRadius: const BorderRadius.all(Radius.circular(12)),
                                          image: DecorationImage(image: NetworkImage(element.thumbnail!), fit: BoxFit.cover),
                                        ),
                                        margin: const EdgeInsets.only(right: 8),
                                      ),
                                      Flexible(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(element.title!, maxLines: 1, overflow: TextOverflow.clip, style: const TextStyle(fontWeight: FontWeight.w500)),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: [
                                                Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius: const BorderRadius.all(Radius.circular(4)),
                                                      border: Border.all(color: Colors.blue),
                                                    ),
                                                    padding: const EdgeInsets.all(4),
                                                    child: Text('Get Rs. ${element.payoutAmt!}',
                                                        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.blue))),
                                                Padding(
                                                  padding: const EdgeInsets.only(right: 8),
                                                  child: Text('⚡ ${element.totalLead!}', style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 10)),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
