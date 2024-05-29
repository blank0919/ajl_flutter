import 'package:ajl_flutter/pages/home/home_binding.dart';
import 'package:ajl_flutter/pages/home/home_view.dart';
import 'package:ajl_flutter/pages/message/message_binding.dart';
import 'package:ajl_flutter/pages/message/message_view.dart';
import 'package:ajl_flutter/pages/mine/mine_binding.dart';
import 'package:ajl_flutter/pages/mine/mine_view.dart';
import 'package:ajl_flutter/pages/tab/tab_binding.dart';
import 'package:ajl_flutter/pages/tab/tab_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'app_routes.dart';

class AppPages {
  AppPages._();
  
  static const initialRoute = Routes.tab;

  static final routes = [
    GetPage(
        name: Routes.tab,
        page: () => const TabPage(),
        binding: TabBinding()
    ),
    GetPage(
        name: Routes.home,
        page: () => const HomePage(),
        binding: HomeBinding()
    ),
    GetPage(
        name: Routes.message,
        page: () => const MessagePage(),
        binding:MessageBinding()
    ),
    GetPage(
        name: Routes.mine,
        page: () => const MinePage(),
        binding: MineBinding()
    ),
  ];
}
class AppController extends GetxController {
  Widget get currentPage {
    final currentRoute = Get.currentRoute;
    final currentPage = AppPages.routes.firstWhere(
          (route) => route.name == currentRoute,
      orElse: () => AppPages.routes.first,
    );
    return currentPage.page();
  }
}