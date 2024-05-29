import 'package:get/get.dart';

import 'tab_logic.dart';

class TabBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TabLogic());
  }
}
