import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:get/get.dart';

import '../controllers/offer_detail_controller.dart';

class OfferDetailView extends GetView<OfferDetailController> {
  OfferDetailView({Key? key}) : super(key: key);
  String thumbnail = Get.arguments[0];
  int index = Get.arguments[1];
  double appRating = Get.arguments[2];
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
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 109,
                  width: 109,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(image: NetworkImage(thumbnail), fit: BoxFit.cover),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(controller.taskDetail[index].title!, maxLines: 1, overflow: TextOverflow.clip, style: const TextStyle(fontWeight: FontWeight.w500)),
                    const SizedBox(height: 5),
                    Text('⚡ ${controller.taskDetail[index].description}',
                        maxLines: 1, overflow: TextOverflow.clip, style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 10)),
                    const SizedBox(height: 5),
                    RatingBar.builder(
                      initialRating: appRating,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 14,
                      itemBuilder: (context, _) => const Icon(Icons.star, color: Colors.amber),
                      onRatingUpdate: (rating) {},
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Divider(color: Colors.grey, height: 2),
            const SizedBox(height: 16),
            Row(
              children: const [
                Text("Steps (1/4)", maxLines: 1, overflow: TextOverflow.clip, style: TextStyle(fontWeight: FontWeight.w500)),
              ],
            ),
            const SizedBox(height: 16),
            Step(
              name: "Install the application",
              borderColor: const Color(0xff41A31F),
              decoration: TextDecoration.lineThrough,
              leadingColor: const Color(0xff41A31F),
              leadingIcon: const Padding(padding: EdgeInsets.all(5), child: Icon(Icons.check, color: Colors.white, size: 17)),
              trailingIconColor: const Color(0xff41A31F),
              trailingTextColor: Colors.white,
            ),
            const SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xffF5970A), width: 2),
                borderRadius: const BorderRadius.all(Radius.circular(15)),
              ),
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.timer, color: Color(0xffF5970A), size: 30),
                      const SizedBox(width: 12),
                      const Text("Complete 3 offers", style: TextStyle(fontWeight: FontWeight.w500)),
                      const Expanded(child: SizedBox.shrink()),
                      Container(
                        height: 29,
                        decoration: const BoxDecoration(color: Color(0xffF5970A), borderRadius: BorderRadius.all(Radius.circular(99))),
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: const Text("₹20", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white)),
                      )
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
                      style: TextStyle(fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Step(
              borderColor: const Color(0xfff4f4f4),
              backgroundColor: const Color(0xfff4f4f4),
              name: "Refer Workstation to friend",
              leadingColor: const Color(0xffe0e0e0),
              leadingIcon: const Padding(padding: EdgeInsets.all(5), child: Icon(Icons.timer, color: Color(0xffe0e0e0), size: 17)),
              trailingIconColor: Colors.white,
              trailingTextColor: const Color(0xff1185D5),
            ),
            const SizedBox(height: 16),
            Step(
              borderColor: const Color(0xfff4f4f4),
              backgroundColor: const Color(0xfff4f4f4),
              name: "Withdraw first amount",
              leadingColor: const Color(0xffe0e0e0),
              leadingIcon: const Padding(padding: EdgeInsets.all(5), child: Icon(Icons.timer, color: Color(0xffe0e0e0), size: 17)),
              trailingIconColor: Colors.white,
              trailingTextColor: const Color(0xff1185D5),
            ),
            const Expanded(child: SizedBox.shrink()),
            const Text('⚡ 23,567 users has already participated', style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xffFF9E0C))),
            const SizedBox(height: 12),
            Container(
              height: 60,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(14)),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xff33C1EF),
                      Color(0xff1185D5),
                    ],
                  )),
              alignment: Alignment.center,
              child: const Text('Get ₹364', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20, color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}

class Step extends StatelessWidget {
  Step(
      {Key? key,
      required this.borderColor,
      required this.name,
      this.backgroundColor,
      this.leadingColor,
      this.trailingIconColor,
      this.trailingTextColor,
      required this.leadingIcon,
      this.decoration})
      : super(key: key);

  Color borderColor = const Color(0xFF000000);
  String name;
  Color? backgroundColor;
  Color? leadingColor;
  Color? trailingIconColor;
  Color? trailingTextColor;
  Widget leadingIcon;
  TextDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: backgroundColor, border: Border.all(color: borderColor, width: 2), borderRadius: const BorderRadius.all(Radius.circular(99))),
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              color: leadingColor,
              shape: BoxShape.circle,
            ),
            child: leadingIcon,
          ),
          const SizedBox(width: 12),
          Text(name, style: TextStyle(fontWeight: FontWeight.w500, decoration: decoration)),
          const Expanded(child: SizedBox.shrink()),
          Container(
            height: 29,
            decoration: BoxDecoration(color: trailingIconColor, borderRadius: BorderRadius.all(Radius.circular(99))),
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text("₹20", style: TextStyle(fontWeight: FontWeight.w500, color: trailingTextColor)),
          )
        ],
      ),
    );
  }
}
