import 'package:ajl_flutter/pages/tool.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'home_logic.dart';

class HomePage extends GetView<HomeLogic> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
   // final logic = Get.find<HomeLogic>();

    return Scaffold(
      primary: false,
      appBar: EmptyAppBar(),
      body: ListView(
        children: [
          SizedBox(
            height: 464,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Positioned(top:0,child: Container(color: Colors.red,height: 260,width: ScreenUtil().screenWidth,),),

                Positioned(top: 260,width: ScreenUtil().screenWidth,height: 200,child: Container(color: Colors.yellow,),),
                Positioned(top: 260-22, child: Padding(
                  padding: const EdgeInsets.only(left:12),
                  child: Container(color: Colors.green,height: 44,width: ScreenUtil().screenWidth-24,),
                )),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class  EmptyAppBar  extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  Size get preferredSize => Size(0.0, 0.0);

}