import 'package:get/get.dart';

import '../modules/all offers/bindings/all_offers_binding.dart';
import '../modules/all offers/views/all_offers_view.dart';
import '../modules/gifts/bindings/gifts_binding.dart';
import '../modules/gifts/views/gifts_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/my offers/bindings/my_offers_binding.dart';
import '../modules/my offers/views/my_offers_view.dart';
import '../modules/offer detail/bindings/offer_detail_binding.dart';
import '../modules/offer detail/views/offer_detail_view.dart';
import '../modules/upcoming/bindings/upcoming_binding.dart';
import '../modules/upcoming/views/upcoming_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ALL_OFFERS,
      page: () => const AllOffersView(),
      binding: AllOffersBinding(),
    ),
    GetPage(
      name: _Paths.MY_OFFERS,
      page: () => const MyOffersView(),
      binding: MyOffersBinding(),
    ),
    GetPage(
      name: _Paths.GIFTS,
      page: () => const GiftsView(),
      binding: GiftsBinding(),
    ),
    GetPage(
      name: _Paths.UPCOMING,
      page: () => const UpcomingView(),
      binding: UpcomingBinding(),
    ),
    GetPage(
      name: _Paths.OFFER_DETAIL,
      page: () => OfferDetailView(),
      binding: OfferDetailBinding(),
    ),
  ];
}
