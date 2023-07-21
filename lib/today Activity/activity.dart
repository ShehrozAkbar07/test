import 'package:flutter/material.dart';

import '../utils/AppColors.dart';

class RowHeading extends StatefulWidget {
  final String text;
  const RowHeading({super.key, required this.text});

  @override
  State<RowHeading> createState() => _RowHeadingState();
}

class _RowHeadingState extends State<RowHeading> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.text,
            style: const TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
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
    );
  }
}

class RowActivity extends StatefulWidget {
  const RowActivity({super.key});

  @override
  State<RowActivity> createState() => _RowActivityState();
}

class _RowActivityState extends State<RowActivity> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            height: size.height * 0.14,
            width: size.width * 0.5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xff162130)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Container(
                    height: size.height * 0.03,
                    width: size.width * 0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color.fromARGB(255, 150, 142, 71),
                    ),
                    child: const Center(
                      child: Text(
                        "Premium",
                        style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  const Text(
                    "Crossfit Foundations",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  const Text(
                    "4 Week • 12 Workout",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: size.width * 0.03,
          ),
          Container(
            height: size.height * 0.14,
            width: size.width * 0.5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xff162130)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Container(
                    height: size.height * 0.03,
                    width: size.width * 0.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color.fromARGB(255, 37, 93, 39)),
                    child: const Center(
                      child: Text(
                        "Free",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  const Text(
                    "4 week muscle up ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  const Text(
                    "4 Week • 12 Workout",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: size.width * 0.03,
          ),
          Container(
            height: size.height * 0.14,
            width: size.width * 0.5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xff162130)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Container(
                    height: size.height * 0.03,
                    width: size.width * 0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color.fromARGB(255, 150, 142, 71),
                    ),
                    child: const Center(
                      child: Text(
                        "Premium",
                        style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  const Text(
                    "Crossfit Foundations",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  const Text(
                    "4 Week • 12 Workout",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
