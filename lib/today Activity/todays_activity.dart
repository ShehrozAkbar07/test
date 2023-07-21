import 'package:flutter/material.dart';
import 'package:test/today%20Activity/my_plans.dart';

import '../utils/AppColors.dart';
import 'activity.dart';

class Activity extends StatefulWidget {
  const Activity({super.key});

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.04,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
                child: const Text(
                  "Today's activity",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
                child: const Text(
                  "7 June 2023",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 17,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
                child: Container(
                  height: size.height * 0.17,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      // border: Border.all(color: AppColors.grey, width: 0.3),
                      color: Color(0xff162130)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Loose Weights",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 14,
                                ),
                              ),
                              Container(
                                height: size.height * 0.06,
                                width: size.width * 0.06,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: AppColors.grey, width: 1.5)),
                                child: const Center(
                                    child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: AppColors.grey,
                                  size: 15,
                                )),
                              )
                            ],
                          ),
                          const Text(
                            "Upper body muscular endurance",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          const Text(
                            "32% completed • 05/14 excercises",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "My Plans",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "View all",
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
                child: const MyPlans(),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: size.height * 0.06,
                      width: size.width * 0.42,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color.fromARGB(255, 3, 6, 10)),
                      child: Row(
                        children: [
                          SizedBox(
                            width: size.width * 0.01,
                          ),
                          const Icon(
                            Icons.add,
                            size: 20,
                            color: Colors.white,
                          ),
                          const Text(
                            "Create your plan",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        height: size.height * 0.06,
                        width: size.width * 0.42,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xfff84a14)),
                        child: const Center(
                          child: Text(
                            "Generate AI plan",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              const RowHeading(
                text: 'Loose weight  plans',
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.only(left: size.width * 0.04),
                child: Container(
                  height: size.height * 0.2,
                  width: double.infinity,
                  color: AppColors.primary,
                  child: RowActivity(),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              const RowHeading(
                text: 'Build muscle  plans',
              ),
              Padding(
                padding: EdgeInsets.only(left: size.width * 0.04),
                child: Container(
                  height: size.height * 0.2,
                  width: double.infinity,
                  color: AppColors.primary,
                  child: RowActivity(),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              const RowHeading(
                text: 'CrossFit  plans',
              ),
              Padding(
                padding: EdgeInsets.only(left: size.width * 0.04),
                child: Container(
                  height: size.height * 0.2,
                  width: double.infinity,
                  color: AppColors.primary,
                  child: RowActivity(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
