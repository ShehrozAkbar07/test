import 'package:flutter/material.dart';

import '../utils/AppColors.dart';

class MyPlans extends StatefulWidget {
  const MyPlans({super.key});

  @override
  State<MyPlans> createState() => _MyPlansState();
}

class _MyPlansState extends State<MyPlans> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height * 0.17,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              // border: Border.all(color: AppColors.grey, width: 0.3),
              color: Color(0xff162130)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    // color: Colors.orange,
                    height: size.height * 0.03,
                    width: size.width * 0.41,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: size.height * 0.03,
                          width: size.width * 0.17,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 52, 119, 54),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          // color: Color.fromARGB(255, 52, 119, 54),
                          child: const Center(
                            child: Text(
                              "Active",
                              style: TextStyle(
                                color: Color.fromARGB(255, 104, 214, 108),
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: size.height * 0.03,
                          width: size.width * 0.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color.fromARGB(255, 150, 142, 71),
                          ),
                          child: Center(
                            child: const Text(
                              "AI & Coach",
                              style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: size.height * 0.06,
                    width: size.width * 0.06,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.grey, width: 1.5)),
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
                "Lean & Fit",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              const Text(
                "32% completed • 04 weeks",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ]),
          ),
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        Container(
          height: size.height * 0.17,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              // border: Border.all(color: AppColors.grey, width: 0.3),
              color: Color(0xff162130)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    // color: Colors.orange,
                    height: size.height * 0.03,
                    width: size.width * 0.41,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: size.height * 0.03,
                          width: size.width * 0.2,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 134, 41, 34),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          // color: Color.fromARGB(255, 52, 119, 54),
                          child: const Center(
                            child: Text(
                              "Not Started",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: size.height * 0.03,
                          width: size.width * 0.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color.fromARGB(255, 146, 55, 86),
                          ),
                          child: Center(
                            child: const Text(
                              "AI Exclusive",
                              style: TextStyle(
                                color: Colors.pink,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: size.height * 0.06,
                    width: size.width * 0.06,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.grey, width: 1.5)),
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
                "CrossFit Foundations",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              const Text(
                "AI has generated you work plan",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
