import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:test/mentors.dart';
import 'package:test/route/app_routes.dart';
import 'package:test/today%20Activity/todays_activity.dart';

import 'bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BLK Sense",
      getPages: AppRoutes.appRoutes,
      initialRoute: AppRoutes.bottomnav,
    );
  }
}
