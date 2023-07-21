// import 'package:flutter/material.dart';

// class BottomNavBar extends StatefulWidget {
//   const BottomNavBar({super.key});

//   @override
//   State<BottomNavBar> createState() => _BottomNavBarState();
// }

// class _BottomNavBarState extends State<BottomNavBar> {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       bottomNavigationBar: Container(
//         height: size.height * 0.1,
//         width: double.infinity,
//         decoration: const BoxDecoration(
//             color: const Color(0xff162130),
//             borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(15), topRight: Radius.circular(15))),
//         child:
//             Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//           Column(
//             children: [
//               Icon(
//                 Icons.home,
//                 size: 18,
//               ),
//               Text(
//                 "Home",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 15,
//                 ),
//               ),
//             ],
//           ),
//           Column(
//             children: [
//               Icon(
//                 Icons.home,
//                 size: 18,
//               ),
//               Text(
//                 "Home",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 15,
//                 ),
//               ),
//             ],
//           ),
//           Column(
//             children: [
//               Icon(
//                 Icons.home,
//                 size: 18,
//               ),
//               Text(
//                 "Home",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 15,
//                 ),
//               ),
//             ],
//           )
//         ]),
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/utils/AppColors.dart';

import 'Controller/bottomNav_Controller.dart';

class BottomNavScreen extends StatelessWidget {
  BottomNavController controller = Get.put(BottomNavController());

  @override
  Widget build(BuildContext context) {
    print("item ==> ${controller.pageIndex.value}");
    return GetBuilder(
      init: controller,
      builder: (_) {
        return Scaffold(
          body: controller.pages.value.elementAt(controller.pageIndex.value),
          bottomNavigationBar: BottomNavBarWidget(),
        );
      },
    );
  }
}

class BottomNavBarWidget extends StatelessWidget {
  BottomNavController controller = Get.put(BottomNavController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GetBuilder<BottomNavController>(
      init: controller,
      assignId: true,
      builder: (controller) {
        return Container(
          height: 60,
          decoration: BoxDecoration(
              color: Color(0xff162130),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.3),
                  spreadRadius: 4,
                  blurRadius: 7,
                  offset: Offset(0, 0), // changes position of shadow
                ),
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  controller.pageIndex.value = 0;
                  controller.update();
                },
                child: Column(
                  children: [
                    SizedBox(height: size.height * 0.01),
                    controller.pageIndex.value == 0
                        ? const Icon(Icons.home, color: Color(0xfff84a14))
                        : const Icon(Icons.home, color: Colors.white),
                    SizedBox(height: size.height * 0.005),
                    Text(
                      "Home",
                      style: controller.pageIndex.value == 0
                          ? const TextStyle(
                              color: Color(0xfff84a14),
                              fontSize: 12,
                              fontWeight: FontWeight.w500)
                          : const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              // IconButton(
              //   enableFeedback: false,
              //   onPressed: () {
              //     controller.pageIndex.value = 0;
              //     controller.update();
              //   },
              //   icon: controller.pageIndex.value == 0
              //       ? Icon(
              //           Icons.home,
              //           // color: primary,
              //           // size: 30.sp,
              //         )
              //       : Icon(
              //           Icons.home,
              //           // color: whiteColor,
              //           // size: 30.sp,
              //         ),
              // ),

              InkWell(
                onTap: () {
                  controller.pageIndex.value = 1;
                  controller.update();
                },
                child: Column(
                  children: [
                    SizedBox(height: size.height * 0.01),
                    controller.pageIndex.value == 1
                        ? Icon(Icons.sports, color: Color(0xfff84a14))
                        : const Icon(Icons.sports, color: Colors.white),
                    SizedBox(height: size.height * 0.005),
                    Text(
                      "Resources",
                      style: controller.pageIndex.value == 1
                          ? const TextStyle(
                              color: Color(0xfff84a14),
                              fontSize: 12,
                              fontWeight: FontWeight.w500)
                          : const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  controller.pageIndex.value = 2;
                  controller.update();
                },
                child: Column(
                  children: [
                    SizedBox(height: size.height * 0.01),
                    controller.pageIndex.value == 2
                        ? Icon(Icons.search, color: Color(0xfff84a14))
                        : const Icon(Icons.search, color: Colors.white),
                    SizedBox(height: size.height * 0.005),
                    Text(
                      "Mentors",
                      style: controller.pageIndex.value == 2
                          ? const TextStyle(
                              color: Color(0xfff84a14),
                              fontSize: 12,
                              fontWeight: FontWeight.w500)
                          : const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
