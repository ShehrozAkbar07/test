import 'package:flutter/material.dart';
import 'package:test/utils/AppColors.dart';

class Mentors extends StatefulWidget {
  const Mentors({super.key});

  @override
  State<Mentors> createState() => _MentorsState();
}

class _MentorsState extends State<Mentors> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: size.height * 0.04,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Mentors",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: size.height * 0.07,
              child: TextFormField(
                style: TextStyle(color: Colors.white, fontSize: 16),
                decoration: InputDecoration(
                    hintText: 'Search mentors',
                    hintStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 16),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 21,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                            color: AppColors.grey, width: 0.7)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                            color: AppColors.grey, width: 0.7))),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "All Mentors",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 9,
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          height: size.height * 0.1,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border:
                                  Border.all(color: AppColors.grey, width: 0.3),
                              color: AppColors.primary),
                          child: Row(children: [
                            Container(
                                height: size.height * 0.1,
                                width: size.width * 0.22,
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      colors: [
                                        Color(0xffd95655),
                                        Color(0xff3c7f86)
                                      ]),
                                )),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: size.height * 0.01,
                                  left: size.width * 0.04),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "John cooper",
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.01,
                                  ),
                                  const Row(
                                    children: [
                                      Text(
                                        "4.1 | ",
                                        style: TextStyle(
                                          color: AppColors.grey,
                                          fontSize: 14,
                                        ),
                                      ),
                                      Text(
                                        " Personal Trainer ",
                                        style: TextStyle(
                                          color: AppColors.grey,
                                          fontSize: 14,
                                        ),
                                      ),
                                      Text(
                                        " | Germany",
                                        style: TextStyle(
                                          color: AppColors.grey,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ]),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      )
                    ],
                  );
                }),
          )
        ]),
      ),
    );
  }
}
