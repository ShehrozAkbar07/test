import 'package:get/get.dart';
import 'package:test/mentors.dart';
import 'package:test/today%20Activity/todays_activity.dart';

import '../bottom_nav_bar.dart';

class AppRoutes {
  static const String bottomnav = "/bottomnav";
  static const String mentor = "/mentor";
  static const String activity = "/activity";

  static List<GetPage> appRoutes = [
    GetPage(name: bottomnav, page: () => BottomNavScreen()),
    GetPage(name: mentor, page: () => const Mentors()),
    GetPage(name: activity, page: () => const Activity()),
  ];
}
