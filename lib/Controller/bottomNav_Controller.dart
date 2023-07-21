import 'package:get/get.dart';
import 'package:test/mentors.dart';

import '../today Activity/empty.dart';
import '../today Activity/todays_activity.dart';

class BottomNavController extends GetxController {
  RxInt pageIndex = 0.obs;

  final pages = const [Mentors(), Activity(), EmptyScreen()].obs;
}
