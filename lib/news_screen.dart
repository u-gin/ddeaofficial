import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constants/color_system.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70.0),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 30, bottom: 20),
              child: Text(
                "News",
                style: TextStyle(
                  color: ColorSystem.black,
                  fontSize: 20.0,
                  fontFamily: 'Metropolis',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              height: Get.height,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Ministries Week',
                              style: TextStyle(
                                fontSize: 17.0,
                                fontFamily: 'Metropolis',
                                color: ColorSystem.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Tuesday, 8:25',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontFamily: 'Metropolis',
                                color: ColorSystem.primary,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'This week is ministries week, all members should brace and make it a point to attend. Please don\'t miss this encounter',
                          maxLines: 2,
                          style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'Metropolis',
                              color: ColorSystem.hintTextColor,
                              fontWeight: FontWeight.w500,
                              overflow: TextOverflow.ellipsis),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ));
  }
}
