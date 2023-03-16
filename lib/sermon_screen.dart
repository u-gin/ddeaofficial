import 'package:ddea_official/constants/color_system.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/appbar_template.dart';

class SermonScreen extends StatelessWidget {
  const SermonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppbarTemplate(appBarTitle: "Sermon"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView.builder(
            itemCount: 10,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: cardTemplate(),
              );
            },
          ),
        ),
      ),
    );
  }

  cardTemplate() {
    return Container(
      width: Get.width,
      decoration: BoxDecoration(
        color: ColorSystem.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: Get.width * 0.5,
                  child: Text(
                    'Repositioning the local church for maxximum imoact',
                    maxLines: 1,
                    style: TextStyle(
                      color: ColorSystem.black,
                      fontFamily: 'Metropolis',
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                Text(
                  'Sept 12, 2023',
                  style: TextStyle(
                    color: ColorSystem.primary,
                    fontFamily: 'Metropolis',
                    fontSize: 12.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Elder Ernest Adofo-Antwi',
              maxLines: 1,
              style: TextStyle(
                color: ColorSystem.black,
                fontFamily: 'Metropolis',
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Colossians 2:6-7',
              maxLines: 1,
              style: TextStyle(
                color: ColorSystem.black,
                fontFamily: 'Metropolis',
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
