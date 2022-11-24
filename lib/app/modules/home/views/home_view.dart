import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: controller.homeTabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('CashKing', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
          actions: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 37,
                width: 100,
                alignment: Alignment.centerLeft,
                decoration: const ShapeDecoration(color: Colors.white, shape: StadiumBorder()),
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.only(right: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    CircleAvatar(backgroundColor: Color(0xff33C1EF), radius: 15, child: Icon(Icons.wallet, size: 14)),
                    Expanded(
                      child: Center(
                        child: Text("\u20b9 754", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black)),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
          bottom: PreferredSize(
            preferredSize: const Size(0, 80),
            child: Material(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TabBar(
                  labelColor: const Color(0xff242424),
                  indicatorWeight: 3,
                  indicatorColor: const Color(0xff0085FF),
                  labelStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  tabs: controller.homeTabs,
                ),
              ),
            ),
          ),
        ),
        drawer: Container(color: Colors.white, width: 300),
        body: TabBarView(children: controller.screens),
      ),
    );
  }
}
