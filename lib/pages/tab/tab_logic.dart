import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TabLogic extends GetxController {
  late PageController pageController;
  RxInt currentPage = 0.obs;
  void goToTab(int page) {
    print(page);
    currentPage.value = page;
    pageController.jumpToPage(page);
  }
  @override
  void onInit() {
    // TODO: implement onInit
    pageController = PageController(initialPage: 0);
    super.onInit();
  }
  @override
  void onClose() {
    // TODO: implement onClose
    pageController.dispose();
    super.onClose();
  }
}
