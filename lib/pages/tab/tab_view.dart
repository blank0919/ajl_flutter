import 'package:ajl_flutter/pages/home/home_view.dart';
import 'package:ajl_flutter/pages/message/message_view.dart';
import 'package:ajl_flutter/pages/mine/mine_view.dart';
import 'package:ajl_flutter/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import 'tab_logic.dart';

class TabPage extends GetView<TabLogic> {
  const TabPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: PageView(
        controller: controller.pageController,
        children:const [HomePage(),MessagePage(),MinePage()]
      ),
      bottomNavigationBar: BottomAppBar(
        surfaceTintColor: Colors.white,
        color: Colors.white,
        child: Obx(
            ()=>Row(
              children: [
                _bottomAppBarItem(context, page: 0, labelText: "首页",controller: controller),
                _bottomAppBarItem(context, page: 1, labelText: "消息",controller: controller),
                _bottomAppBarItem(context, page: 2, labelText: "我的",controller: controller)
              ],
            ),
        )
      ),
    );
  }

  Widget _bottomAppBarItem(BuildContext context,{required page,required labelText,required TabLogic controller}) {
    return Expanded(child: GestureDetector(
      behavior: HitTestBehavior.opaque,
      child: Column(
        children: [
          Image.asset(iconString(page, controller) ,width: 24,height: 24,),
          const SizedBox(height: 4,),
          Text(labelText,style: TextStyle(color: controller.currentPage == page ? Colors.red : Colors.black),)
        ],
      ),
      onTap: (){
        controller.goToTab(page);
      },
    ));
  }

  String iconString(page, TabLogic controller) {
       var iconString = '';
    switch (page) {
      case 0:
        iconString = controller.currentPage == page ? "assets/images/home_selected.png" : "assets/images/home_normal.png";
      case 1:
        iconString = controller.currentPage == page ? "assets/images/msg_selected.png" : "assets/images/msg_normal.png";
      case 2:
        iconString = controller.currentPage == page ? "assets/images/mine_selected.png" : "assets/images/mine_normal.png";
    }
    return iconString;
  }
}
