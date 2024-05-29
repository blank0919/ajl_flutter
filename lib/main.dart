
import 'package:ajl_flutter/pages/tab/tab_view.dart';
import 'package:ajl_flutter/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(
    ScreenUtilInit(
      child:GetMaterialApp(
        debugShowCheckedModeBanner: false,
        getPages: AppPages.routes,
        initialRoute: AppPages.initialRoute,
      )
    )

  );
}


